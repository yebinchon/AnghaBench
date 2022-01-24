#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int delta; struct TYPE_10__* right; struct TYPE_10__* left; } ;
typedef  TYPE_1__ tree_ext_small_t ;
struct TYPE_11__ {int N; } ;
typedef  TYPE_2__ listree_t ;

/* Variables and functions */
 TYPE_1__* NIL ; 
 int FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 size_t TF_MINUS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int* rpos_to_delta ; 

__attribute__((used)) static int FUNC4 (tree_ext_small_t *T, listree_t *LT, int a, int b) {
  if (a > b) {
    return 1;
  }
  if (T == NIL) {
    while (a <= b) {
      FUNC2 (LT, a++);
      //*RA++ = A[a++];
    }
    return 1;
  }
  int N = LT->N;
  int c = N - FUNC0(T) + T->left->delta;		  /* # of el. of joined list < T->x */
  int c1 = c + (FUNC1(T) == TF_MINUS ? 0 : 1);        /* # of el. of joined list <= T->x */
  int s = T->left->delta + rpos_to_delta[FUNC1(T)];
  if (b < c) {
    return FUNC4 (T->left, LT, a, b);
  }
  if (a >= c1) {
    return FUNC4 (T->right, LT, a - s, b - s);
  }
  if (FUNC4 (T->left, LT, a, c-1) < 0) {
    return -2;
  }
  /* now a < c1, b >= c, c <= c1 <= c+1 => a <= c, c1-1 <= b */
  if (c < c1) {
    FUNC3 (T);
    //*RA++ = T->x;
  }
  return FUNC4 (T->right, LT, c1 - s, b - s);
}