
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* git__sort_r_cmp ) (void const*,void*,void*) ;


 int assert (int) ;

__attribute__((used)) static int binsearch(
 void **dst, const void *x, size_t size, git__sort_r_cmp cmp, void *payload)
{
 int l, c, r;
 void *lx, *cx;

 assert(size > 0);

 l = 0;
 r = (int)size - 1;
 c = r >> 1;
 lx = dst[l];


 if (cmp(x, lx, payload) < 0)
  return 0;

 else if (cmp(x, lx, payload) == 0) {
  int i = 1;
  while (cmp(x, dst[i], payload) == 0)
   i++;
  return i;
 }


 cx = dst[c];
 while (1) {
  const int val = cmp(x, cx, payload);
  if (val < 0) {
   if (c - l <= 1) return c;
   r = c;
  } else if (val > 0) {
   if (r - c <= 1) return c + 1;
   l = c;
   lx = cx;
  } else {
   do {
    cx = dst[++c];
   } while (cmp(x, cx, payload) == 0);
   return c;
  }
  c = l + ((r - l) >> 1);
  cx = dst[c];
 }
}
