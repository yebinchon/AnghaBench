
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ (* git__sort_r_cmp ) (int *,int *,void*) ;


 int swap (int *,int *,size_t) ;

__attribute__((used)) static void insertsort(
 void *els, size_t nel, size_t elsize,
 git__sort_r_cmp cmp, void *payload)
{
 uint8_t *base = els;
 uint8_t *end = base + nel * elsize;
 uint8_t *i, *j;

 for (i = base + elsize; i < end; i += elsize)
  for (j = i; j > base && cmp(j, j - elsize, payload) < 0; j -= elsize)
   swap(j, j - elsize, elsize);
}
