
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int stub1 (void const*,void const*) ;

int git__bsearch(
 void **array,
 size_t array_len,
 const void *key,
 int (*compare)(const void *, const void *),
 size_t *position)
{
 size_t lim;
 int cmp = -1;
 void **part, **base = array;

 for (lim = array_len; lim != 0; lim >>= 1) {
  part = base + (lim >> 1);
  cmp = (*compare)(key, *part);
  if (cmp == 0) {
   base = part;
   break;
  }
  if (cmp > 0) {
   base = part + 1;
   lim--;
  }
 }

 if (position)
  *position = (base - array);

 return (cmp == 0) ? 0 : GIT_ENOTFOUND;
}
