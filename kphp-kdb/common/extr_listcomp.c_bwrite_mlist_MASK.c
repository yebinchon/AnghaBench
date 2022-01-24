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
struct left_subtree_bits_array {int n; scalar_t__ idx; int /*<<< orphan*/  a; } ;
struct bitwriter {unsigned char* ptr; } ;
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bitwriter*,int*,int*,int /*<<< orphan*/ ,int const,int,struct left_subtree_bits_array*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bitwriter*,int*,int*,int /*<<< orphan*/ ,int const,int,struct left_subtree_bits_array*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bitwriter*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bitwriter*,struct bitwriter*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9 (struct bitwriter *bw, int *L, int *M, int K, int left_subtree_size_threshold, int *redundant_bits) {
  FUNC0 (L[0] == -1);
  const int v = K + 1;
  int i, all_ones = 1;
  for (i = 1; i <= K; i++) {
    FUNC0 (M[i] >= 1);
    if (M[i] > 1) {
      all_ones = 0;
      break;
    }
  }
  struct bitwriter tmp;
  FUNC7 (&tmp, bw, sizeof (struct bitwriter));
  unsigned char c = *(bw->ptr);
  struct left_subtree_bits_array p;
  p.n = FUNC6 (0, v, left_subtree_size_threshold);
  dyn_mark_t mrk;
  FUNC4 (mrk);
  p.a = FUNC8 (p.n * sizeof (int));
  p.idx = 0;
  FUNC3 (bw, all_ones, 1);
  FUNC1 (bw, L, M, 0, v, left_subtree_size_threshold, &p, all_ones);
  FUNC7 (bw, &tmp, sizeof (struct bitwriter));
  *(bw->ptr) = c;
  p.idx = 0;
  if (redundant_bits != NULL) {
    *redundant_bits = 0;
  }
  FUNC3 (bw, all_ones, 1);
  FUNC2 (bw, L, M, 0, v, left_subtree_size_threshold, &p, redundant_bits, all_ones);
  FUNC5 (mrk);
}