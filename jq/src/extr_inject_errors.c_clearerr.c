
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int GET_REAL (void (*) (int *)) ;
 scalar_t__ error ;
 int * fail ;
 int * fail_close ;
 int * fail_read ;
 int * fail_write ;
 int real_clearerr (int *) ;

void clearerr(FILE *f) {
  GET_REAL(clearerr);
  real_clearerr(f);
  if (fail == f) {
    fail = fail_read = fail_write = fail_close = 0;
    error = 0;
  }
}
