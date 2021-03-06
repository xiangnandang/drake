% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drake_ggraph.R
\name{render_drake_ggraph}
\alias{render_drake_ggraph}
\title{Visualize the workflow with \code{ggplot2}/\code{ggraph} using
\code{\link[=drake_graph_info]{drake_graph_info()}} output.
\lifecycle{stable}}
\usage{
render_drake_ggraph(
  graph_info,
  main = graph_info$default_title,
  label_nodes = FALSE,
  transparency = TRUE
)
}
\arguments{
\item{graph_info}{List of data frames generated by
\code{\link[=drake_graph_info]{drake_graph_info()}}.
There should be 3 data frames: \code{nodes}, \code{edges},
and \code{legend_nodes}.}

\item{main}{Character string, title of the graph.}

\item{label_nodes}{Logical, whether to label the nodes.
If \code{FALSE}, the graph will not have any text next to the nodes,
which is recommended for large graphs with lots of targets.}

\item{transparency}{Logical, whether to allow transparency in
the rendered graph. Set to \code{FALSE} if you get warnings
like "semi-transparency is not supported on this device".}
}
\value{
A \code{ggplot2} object, which you can modify with more layers,
show with \code{plot()}, or save as a file with \code{ggsave()}.
}
\description{
This function requires packages \code{ggplot2} and \code{ggraph}.
Install them with \code{install.packages(c("ggplot2", "ggraph"))}.
}
\examples{
\dontrun{
isolate_example("Quarantine side effects.", {
load_mtcars_example() # Get the code with drake_example("mtcars").
if (requireNamespace("ggraph", quietly = TRUE)) {
  # Instead of jumpting right to vis_drake_graph(), get the data frames
  # of nodes, edges, and legend nodes.
  drake_ggraph(my_plan) # Jump straight to the static graph.
  # Get the node and edge info that vis_drake_graph() just plotted:
  graph <- drake_graph_info(my_plan)
  render_drake_ggraph(graph)
}
})
}
}
\seealso{
\code{\link[=vis_drake_graph]{vis_drake_graph()}}, \code{\link[=sankey_drake_graph]{sankey_drake_graph()}}, \code{\link[=drake_ggraph]{drake_ggraph()}}
}
