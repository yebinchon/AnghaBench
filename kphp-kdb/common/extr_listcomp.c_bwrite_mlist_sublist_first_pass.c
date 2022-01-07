
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct left_subtree_bits_array {size_t idx; size_t n; int* a; } ;
struct bitwriter {int dummy; } ;


 int assert (int) ;
 int bwrite_gamma_code (struct bitwriter*,int) ;
 int bwrite_get_bits_written (struct bitwriter*) ;
 int bwrite_interpolative_encode_value (struct bitwriter*,int const,int const) ;

__attribute__((used)) static void bwrite_mlist_sublist_first_pass (struct bitwriter *bw, int *L, int *M, int u, int v, int left_subtree_size_threshold, struct left_subtree_bits_array *p, int all_ones) {
  const int sz = v - u;
  if (sz <= 1) { return; }
  const int m = (u + v) >> 1,
            hi = L[v] - (v - m),
            lo = L[u] + (m - u),
             a = L[m] - lo,
             r = hi - lo + 1;
  bwrite_interpolative_encode_value (bw, a, r);
  if (!all_ones) {
    bwrite_gamma_code (bw, M[m]);
  }
  if (sz >= left_subtree_size_threshold) {
    assert (p->idx < p->n);
    int *q = &p->a[p->idx];
    p->idx++;
    int tree_bits = -bwrite_get_bits_written (bw);
    bwrite_mlist_sublist_first_pass (bw, L, M, u, m, left_subtree_size_threshold, p, all_ones);
    tree_bits += bwrite_get_bits_written (bw);
    *q = tree_bits;
    bwrite_gamma_code (bw, tree_bits + 1);
  } else {
    bwrite_mlist_sublist_first_pass (bw, L, M, u, m, left_subtree_size_threshold, p, all_ones);
  }
  bwrite_mlist_sublist_first_pass (bw, L, M, m, v, left_subtree_size_threshold, p, all_ones);
}
