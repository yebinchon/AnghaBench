
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int free (char*) ;
 int msort_with_tmp (void*,size_t,size_t,int (*) (void const*,void const*),char*) ;
 size_t st_mult (size_t,size_t) ;
 char* xmalloc (size_t const) ;

void git_stable_qsort(void *b, size_t n, size_t s,
        int (*cmp)(const void *, const void *))
{
 const size_t size = st_mult(n, s);
 char buf[1024];

 if (size < sizeof(buf)) {

  msort_with_tmp(b, n, s, cmp, buf);
 } else {

  char *tmp = xmalloc(size);
  msort_with_tmp(b, n, s, cmp, tmp);
  free(tmp);
 }
}
