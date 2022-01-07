
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int GET_REAL (size_t (*) (void*,size_t,size_t,int *)) ;
 int * fail_read ;
 size_t real_fread (void*,size_t,size_t,int *) ;

size_t fread(void *buf, size_t sz, size_t nemb, FILE *f) {
  GET_REAL(fread);
  size_t res = real_fread(buf, sz, nemb, f);
  if (fail_read == f)
    return 0;
  return res;
}
