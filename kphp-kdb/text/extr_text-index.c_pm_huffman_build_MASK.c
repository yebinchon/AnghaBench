#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int right; TYPE_1__* w; scalar_t__ left; } ;
typedef  TYPE_2__ pm_cell_t ;
struct TYPE_12__ {int* next; size_t choice; int /*<<< orphan*/ * freq; } ;
struct TYPE_10__ {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREQ_INFTY ; 
 TYPE_5__* PB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

void FUNC5 (pm_cell_t *A, int N) {
  int i;
  FUNC0 ((unsigned) N < (1 << 27) && N > 1); // we need -N .. 7*N to fit in int
  A += N;
  A[0].left = 0;	   // head of free cell list
  A[0].right = 15 * N;      // last available cell + 1
  PB[32].freq[0] = PB[32].freq[1] = FREQ_INFTY;
  // print_tree_builder (A, PB + 32);
  for (i = 31; i >= 0; i--) {
    PB[i].next[0] = -N;
    PB[i].freq[0] = A[-N].w->freq;
    FUNC3 (A, PB + i);
    // print_tree_builder (A, PB + i);
  }
  for (i = 2*N - 2; i > 0; i--) { /* do N-1 times */
    // print_tree_builder (A, PB);
    int n = PB->next[PB->choice];
    FUNC0 (n);
    // fprintf (stderr, "#%d:\t%lld\t", i, PB->freq[PB->choice]);
    FUNC4 (A, n);
    // fprintf (stderr, "\n");
    FUNC2 (A, PB);
  }
  if (verbosity > 1) {
    FUNC1 (stderr, "package-merge: maximal memory usage is %d+%d 8-byte cells out of %d+%d\n", N, 15 * N - A[0].right, N, 15 * N);
  }
}