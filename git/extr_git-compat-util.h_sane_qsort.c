
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qsort (void*,size_t,size_t,int (*) (void const*,void const*)) ;

__attribute__((used)) static inline void sane_qsort(void *base, size_t nmemb, size_t size,
         int(*compar)(const void *, const void *))
{
 if (nmemb > 1)
  qsort(base, nmemb, size, compar);
}
