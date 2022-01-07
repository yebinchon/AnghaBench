
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct left_subtree_bits_array {size_t idx; size_t n; int* a; } ;
struct bitwriter {int dummy; } ;
typedef int pair_t ;


 int assert (int) ;
 int bwrite_coordinates_list (struct bitwriter*,int *,int) ;
 int bwrite_gamma_code (struct bitwriter*,int const) ;
 int bwrite_get_bits_written (struct bitwriter*) ;
 int bwrite_interpolative_encode_value (struct bitwriter*,int const,int const) ;
 int const get_doc_id (int *,int*,int const) ;

__attribute__((used)) static void bwrite_ylist_sublist_second_pass (struct bitwriter *bw, pair_t *P, int *O, int u, int v, int left_subtree_size_threshold, struct left_subtree_bits_array *p) {

  const int sz = v - u;
  if (sz <= 1) { return; }
  const int m = (u + v) >> 1,
            hi = get_doc_id (P, O, v) - (v - m),
            lo = get_doc_id (P, O, u) + (m - u),
             a = get_doc_id (P, O, m) - lo,
             r = hi - lo + 1;
  bwrite_interpolative_encode_value (bw, a, r);

  bwrite_coordinates_list (bw, P + O[m], O[m+1] - O[m]);

  if (sz >= left_subtree_size_threshold) {
    assert (p->idx < p->n);
    const int lsb = p->a[p->idx];
    p->idx++;
    bwrite_gamma_code (bw, lsb + 1);
    int tree_bits = -bwrite_get_bits_written (bw);

    bwrite_ylist_sublist_second_pass (bw, P, O, u, m, left_subtree_size_threshold, p);
    tree_bits += bwrite_get_bits_written (bw);


    assert (lsb == tree_bits);
  } else {
    bwrite_ylist_sublist_second_pass (bw, P, O, u, m, left_subtree_size_threshold, p);
  }
  bwrite_ylist_sublist_second_pass (bw, P, O, m, v, left_subtree_size_threshold, p);
}
