
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_hashmap {int size; scalar_t__ filled; scalar_t__ n; void** h; int (* compare ) (void*,void*) ;int (* compute_hash ) (struct tl_hashmap*,void*,int*,int*) ;} ;


 int assert (int) ;
 int stub1 (struct tl_hashmap*,void*,int*,int*) ;
 int stub2 (void*,void*) ;
 int tl_hashmap_extend (struct tl_hashmap**) ;

void *tl_hashmap_get_f (struct tl_hashmap **V, void *p, int force) {
  assert (force >= 0);
  int h1, h2;
  struct tl_hashmap *H = *V;
  H->compute_hash (H, p, &h1, &h2);
  void *D;
  while ((D = H->h[h1]) != ((void*)0)) {
    if (!H->compare (D, p)) {
      return D;
    }
    h1 += h2;
    if (h1 >= H->size) { h1 -= H->size; }
  }
  if (!force) {
    return ((void*)0);
  }
  if (H->filled == H->n) {
    tl_hashmap_extend (V);
    return tl_hashmap_get_f (V, p, force);
  }
  H->filled++;
  H->h[h1] = p;
  return p;
}
