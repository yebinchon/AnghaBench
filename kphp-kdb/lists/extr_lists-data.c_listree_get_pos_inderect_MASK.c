#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int delta; struct TYPE_7__* right; struct TYPE_7__* left; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_ext_small_t ;
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_8__ {int N; TYPE_1__** root; int /*<<< orphan*/ * IA; int /*<<< orphan*/  DA; } ;
typedef  TYPE_2__ listree_t ;

/* Variables and functions */
 TYPE_1__* NIL ; 
 int FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t TF_MINUS ; 
 size_t TF_PLUS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* rpos_to_delta ; 

__attribute__((used)) static int FUNC5 (listree_t *LD, object_id_t x, int inexact) {
  tree_ext_small_t *T = *LD->root;
  int G_N = LD->N;
  int sd = 0, a = 0, b = G_N - 1;
  while (T != NIL) {
    int c = G_N - FUNC0(T);		// # of array elements < T->x, i.e. A[0]...A[c-1]
    /* T->lpos + T->left->delta = # of el. of joined list < T->x */
    int s = FUNC4 (x, T->x);
    if (s < 0) {
      T = T->left;
      b = c - 1;  // left subtree corresponds to [a .. c-1]
    } else if (!s) {
      FUNC3 (inexact || FUNC1(T) != TF_MINUS);
      return c + sd + T->left->delta - (FUNC1(T) == TF_MINUS);
    } else {
      a = c + (FUNC1(T) != TF_PLUS);	// right subtree corresponds to [rl .. b]
      sd += T->left->delta + rpos_to_delta[FUNC1(T)];
      T = T->right;
    }      
  }
  FUNC3 (a >= 0 && a <= b + inexact && b < G_N);
  b++;
  a--;
  while (b - a > 1) {
    int c = (a + b) >> 1;
    int s = FUNC4 (x, FUNC2 (LD->DA, LD->IA[c]));
    if (s < 0) {
      b = c;
    } else if (s > 0) {
      a = c;
    } else {
      c += sd;
      FUNC3 (c >= 0 && c < G_N + (*LD->root)->delta);
      return c;
    }
  }
  FUNC3 (inexact);
  return a + sd;
}