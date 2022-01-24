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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bitwriter*,int) ; 
 int FUNC2 (struct bitwriter*) ; 
 int /*<<< orphan*/  FUNC3 (struct bitwriter*,int const,int const) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 (struct bitwriter *bw, int *L, int u, int v, int left_subtree_size_threshold, struct left_subtree_bits_array *p, int *redundant_bits) {
  const int sz = v - u;
  if (sz <= 1) { return; }
  const int  m = (u + v) >> 1,
            hi = L[v] - (v - m),
            lo = L[u] + (m - u),
             a = L[m] - lo,
             r = hi - lo + 1;
  FUNC3 (bw, a, r);
  if (sz >= left_subtree_size_threshold) {
    FUNC0 (p->idx < p->n);
    int lsb = p->a[p->idx];
    p->idx++;
    if (redundant_bits != NULL) {
      (*redundant_bits) += FUNC4 (lsb + 1);
    }
    FUNC1 (bw, lsb + 1);
    int tree_bits = -FUNC2 (bw);
    FUNC5 (bw, L, u, m, left_subtree_size_threshold, p, redundant_bits);
    tree_bits += FUNC2 (bw);
    FUNC0 (lsb == tree_bits);
  } else {
    FUNC5 (bw, L, u, m, left_subtree_size_threshold, p, redundant_bits);
  }
  FUNC5 (bw, L, m, v, left_subtree_size_threshold, p, redundant_bits);
}