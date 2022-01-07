
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* git__sort_r_cmp ) (void*,void*,void*) ;


 int binsearch (void**,void*,size_t,scalar_t__ (*) (void*,void*,void*),void*) ;

__attribute__((used)) static void bisort(
 void **dst, size_t start, size_t size, git__sort_r_cmp cmp, void *payload)
{
 size_t i;
 void *x;
 int location;

 for (i = start; i < size; i++) {
  int j;

  if (cmp(dst[i - 1], dst[i], payload) <= 0)
   continue;


  x = dst[i];
  location = binsearch(dst, x, i, cmp, payload);
  for (j = (int)i - 1; j >= location; j--) {
   dst[j + 1] = dst[j];
  }
  dst[location] = x;
 }
}
