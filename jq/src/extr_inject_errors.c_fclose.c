
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int GET_REAL (int (*) (int *)) ;
 int * fail ;
 int * fail_close ;
 int * fail_read ;
 int * fail_write ;
 int real_fclose (int *) ;

int fclose(FILE *f) {
  GET_REAL(fclose);
  int res = real_fclose(f);
  if (fail_close == f) {
    fail = fail_read = fail_write = fail_close = 0;
    return EOF;
  }
  return res;
}
