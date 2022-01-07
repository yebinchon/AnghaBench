
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_hashmap {int size; int n; int h; scalar_t__ filled; } ;


 int TL_MIN_HASHMAP_SIZE ;
 int assert (int) ;
 int get_hashtable_size (int) ;
 int tl_zzmalloc0 (int) ;
 struct tl_hashmap* zmalloc (int) ;

struct tl_hashmap *tl_hashmap_alloc (int n) {
  assert (n >= TL_MIN_HASHMAP_SIZE);
  struct tl_hashmap *H = zmalloc (sizeof (struct tl_hashmap));
  H->size = get_hashtable_size (n);
  H->filled = 0;
  H->n = n;
  H->h = tl_zzmalloc0 (H->size * sizeof (void *));
  return H;
}
