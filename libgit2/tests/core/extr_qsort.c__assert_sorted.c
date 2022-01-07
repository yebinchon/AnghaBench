
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;
typedef scalar_t__ (* git__sort_r_cmp ) (int *,int *,int *) ;


 int cl_assert (int) ;
 int git__qsort_r (int *,size_t,size_t,scalar_t__ (*) (int *,int *,int *),int *) ;

__attribute__((used)) static void _assert_sorted(void *els, size_t n, size_t elsize, git__sort_r_cmp cmp)
{
 int8_t *p = els;

 git__qsort_r(p, n, elsize, cmp, ((void*)0));
 while (n-- > 1) {
  cl_assert(cmp(p, p + elsize, ((void*)0)) <= 0);
  p += elsize;
 }
}
