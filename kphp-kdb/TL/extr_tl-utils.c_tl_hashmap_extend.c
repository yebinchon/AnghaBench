
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_hashmap {int size; int n; int ** h; int compute_hash; int compare; } ;


 int fprintf (int ,char*,int) ;
 int stderr ;
 struct tl_hashmap* tl_hashmap_alloc (int) ;
 int tl_hashmap_free (struct tl_hashmap**) ;
 int tl_hashmap_get_f (struct tl_hashmap**,int *,int) ;
 int verbosity ;

__attribute__((used)) static void tl_hashmap_extend (struct tl_hashmap **V) {
  if (verbosity >= 4) {
    fprintf (stderr, "tl_hashmap_extend: old hash size is %d.\n", (*V)->size);
  }
  int i;
  struct tl_hashmap *H = tl_hashmap_alloc ((*V)->n * 2);
  H->compare = (*V)->compare;
  H->compute_hash = (*V)->compute_hash;
  for (i = 0; i < (*V)->size; i++) {
    if ((*V)->h[i] != ((void*)0)) {
      tl_hashmap_get_f (&H, (*V)->h[i], 1);
    }
  }
  tl_hashmap_free (V);
  *V = H;
}
