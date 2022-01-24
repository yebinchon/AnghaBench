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

__attribute__((used)) static void FUNC4 (struct bitwriter *bw, int *L, int u, int v, int left_subtree_size_threshold, struct left_subtree_bits_array *p) {
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
    int *q = &p->a[p->idx];
    p->idx++;
    int tree_bits = -FUNC2 (bw);
    FUNC4 (bw, L, u, m, left_subtree_size_threshold, p);
    tree_bits += FUNC2 (bw);
    *q = tree_bits;
    FUNC1 (bw, tree_bits + 1);
  } else {
    FUNC4 (bw, L, u, m, left_subtree_size_threshold, p);
  }
  FUNC4 (bw, L, m, v, left_subtree_size_threshold, p);
}