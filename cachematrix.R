## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  sm<-NULL;
  set<-function(m){
    x<<-m;
    sm<<-NULL;
  }
  
  get<-function(){
    x;
  }
  
  setSolveMatrix<-function(smatrix){
    sm<<-smatrix;
  }
  
  getSolveMatrix<-function(){
    sm;
  }
  
  list(set=set,get=get,
       setSolveMatrix=setSolveMatrix,
       getSolveMatrix=getSolveMatrix);
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  sm<-x$getSolveMatrix();
  if(!is.null(sm)){
    message("getting cached data");
    return(sm);
  }
  
  data<-x$get();
  sm<-solve(a=data);
  x$setSolveMatrix(sm);
  sm;
}
