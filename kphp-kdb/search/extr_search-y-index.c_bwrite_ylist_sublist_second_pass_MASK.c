#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct left_subtree_bits_array {size_t idx; size_t n; int* a; } ;
struct bitwriter {int dummy; } ;
typedef  int /*<<< orphan*/  pair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bitwriter*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bitwriter*,int const) ; 
 int FUNC3 (struct bitwriter*) ; 
 int /*<<< orphan*/  FUNC4 (struct bitwriter*,int const,int const) ; 
 int const FUNC5 (int /*<<< orphan*/ *,int*,int const) ; 

__attribute__((used)) static void FUNC6 (struct bitwriter *bw, pair_t *P, int *O, int u, int v, int left_subtree_size_threshold, struct left_subtree_bits_array *p) {
  //fprintf (stderr, "%s[1]: [%d:%d] written_bits: %d\n", __func__, u, v, bwrite_get_bits_written (bw));
  const int sz = v - u;
  if (sz <= 1) { return; }
  const int  m = (u + v) >> 1,
            hi = FUNC5 (P, O, v) - (v - m),
            lo = FUNC5 (P, O, u) + (m - u),
             a = FUNC5 (P, O, m) - lo,
             r = hi - lo + 1;
  FUNC4 (bw, a, r);
  //fprintf (stderr, "%s[2]: [%d:%d] written_bits: %d\n", __func__, u, v, bwrite_get_bits_written (bw));
  FUNC1 (bw, P + O[m], O[m+1] - O[m]);
  //fprintf (stderr, "%s[3]: [%d:%d] written_bits: %d\n", __func__, u, v, bwrite_get_bits_written (bw));
  if (sz >= left_subtree_size_threshold) {
    FUNC0 (p->idx < p->n);
    const int lsb = p->a[p->idx];
    p->idx++;
    FUNC2 (bw, lsb + 1);
    int tree_bits = -FUNC3 (bw);
    //fprintf (stderr, "before call [%d:%d] bwrite_get_bits_written (bw): %d\n", u, v, bwrite_get_bits_written (bw));
    FUNC6 (bw, P, O, u, m, left_subtree_size_threshold, p);
    tree_bits += FUNC3 (bw);
    //fprintf (stderr, "after call [%d:%d] bwrite_get_bits_written (bw): %d\n", u, v, bwrite_get_bits_written (bw));
    //fprintf (stderr, "lsb: %d, tree_bits: %d\n", lsb, tree_bits);
    FUNC0 (lsb == tree_bits);
  } else {
    FUNC6 (bw, P, O, u, m, left_subtree_size_threshold, p);
  }
  FUNC6 (bw, P, O, m, v, left_subtree_size_threshold, p);
}