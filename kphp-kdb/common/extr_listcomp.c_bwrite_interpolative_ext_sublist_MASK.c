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
 int /*<<< orphan*/  FUNC0 (struct bitwriter*,int*,int,int,int,struct left_subtree_bits_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct bitwriter*,int*,int,int,int,struct left_subtree_bits_array*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bitwriter*,struct bitwriter*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7 (struct bitwriter *bw, int *L, int u, int v, int left_subtree_size_threshold, int *redundant_bits) {
  struct bitwriter tmp;
  FUNC5 (&tmp, bw, sizeof (struct bitwriter));
  unsigned char c = *(bw->ptr);
  struct left_subtree_bits_array p;
  p.n = FUNC4 (u, v, left_subtree_size_threshold);
  dyn_mark_t mrk;
  FUNC2 (mrk);
  p.a = FUNC6 (p.n * sizeof (int));
  p.idx = 0;
  FUNC0 (bw, L, u, v, left_subtree_size_threshold, &p);
  FUNC5 (bw, &tmp, sizeof (struct bitwriter));
  *(bw->ptr) = c;
  p.idx = 0;
  if (redundant_bits != NULL) {
    *redundant_bits = 0;
  }
  FUNC1 (bw, L, u, v, left_subtree_size_threshold, &p, redundant_bits);
  FUNC3 (mrk);
}