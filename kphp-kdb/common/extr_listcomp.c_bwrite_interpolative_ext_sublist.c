
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct left_subtree_bits_array {int n; scalar_t__ idx; int a; } ;
struct bitwriter {unsigned char* ptr; } ;
typedef int dyn_mark_t ;


 int bwrite_interpolative_ext_sublist_first_pass (struct bitwriter*,int*,int,int,int,struct left_subtree_bits_array*) ;
 int bwrite_interpolative_ext_sublist_second_pass (struct bitwriter*,int*,int,int,int,struct left_subtree_bits_array*,int*) ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 int get_subtree_array_size (int,int,int) ;
 int memcpy (struct bitwriter*,struct bitwriter*,int) ;
 int zmalloc (int) ;

void bwrite_interpolative_ext_sublist (struct bitwriter *bw, int *L, int u, int v, int left_subtree_size_threshold, int *redundant_bits) {
  struct bitwriter tmp;
  memcpy (&tmp, bw, sizeof (struct bitwriter));
  unsigned char c = *(bw->ptr);
  struct left_subtree_bits_array p;
  p.n = get_subtree_array_size (u, v, left_subtree_size_threshold);
  dyn_mark_t mrk;
  dyn_mark (mrk);
  p.a = zmalloc (p.n * sizeof (int));
  p.idx = 0;
  bwrite_interpolative_ext_sublist_first_pass (bw, L, u, v, left_subtree_size_threshold, &p);
  memcpy (bw, &tmp, sizeof (struct bitwriter));
  *(bw->ptr) = c;
  p.idx = 0;
  if (redundant_bits != ((void*)0)) {
    *redundant_bits = 0;
  }
  bwrite_interpolative_ext_sublist_second_pass (bw, L, u, v, left_subtree_size_threshold, &p, redundant_bits);
  dyn_release (mrk);
}
