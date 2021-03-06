\name{sEdit}
\alias{sEdit}
\title{Simple editing}
\description{
  Simple editing of vectors, lists of vectors and other
  objects.
}
\usage{
 sEdit(name, title="Please enter values:")
}
\arguments{
  \item{name}{a named object that you want to edit.}
  \item{title}{a title for the dialog box.}
}
\value{
  An object with the same type like \code{name}.
}
\details{
  If called with a vector or list of vectors and if \code{tcltk} is
  installed, a dialog box is shown in which data can be entered. If the
  \code{name} is not of type vector or list of vectors, then a default
  editing method is called.
}
\seealso{
  \code{\link{edit}}
}
\examples{
  \dontrun{ 
    ## named vector
    vec  <- c(a=1, b=20, c=0.03)
    new  <- sEdit(vec)
    ## unnamed vector
    sEdit(numeric(10))
    ## list of vectors
    lst <- list(vec=vec, test=1:10)
    sEdit(lst)
    ## list with numeric and character vectors mixed
    lst <- list(vec=vec, test=c("a","b","c"))
    sEdit(lst)
  }
}
\keyword{utilities}
