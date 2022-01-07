
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int GET_REAL (char* (*) (char*,int,int *)) ;
 int * fail_read ;
 char* real_fgets (char*,int,int *) ;

char * fgets(char *buf, int len, FILE *f) {
  GET_REAL(fgets);
  char *res = real_fgets(buf, len, f);
  if (fail_read == f)
    return 0;
  return res;
}
