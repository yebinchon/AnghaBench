
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int GET_REAL (size_t (*) (void const*,size_t,size_t,int *)) ;
 int * fail_write ;
 size_t real_fwrite (void const*,size_t,size_t,int *) ;

size_t fwrite(const void *buf, size_t sz, size_t nemb, FILE *f) {
  GET_REAL(fwrite);
  size_t res = real_fwrite(buf, sz, nemb, f);
  if (fail_write == f)
    return 0;
  return res;
}
