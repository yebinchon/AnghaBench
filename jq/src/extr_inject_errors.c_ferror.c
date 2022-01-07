
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int GET_REAL (int (*) (int *)) ;
 int errno ;
 int error ;
 int * fail ;
 int real_ferror (int *) ;

int ferror(FILE *f) {
  GET_REAL(ferror);
  int res = real_ferror(f);
  if (fail == f) {
    errno = error;
    return 1;
  }
  return res;
}
