#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int y; int rpos; } ;
typedef  TYPE_1__ tree_ext_t ;
struct TYPE_9__ {int* A; int N; int last_A; int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ listree_t ;

/* Variables and functions */
 TYPE_1__* NIL ; 
 scalar_t__ TF_MINUS ; 
 int TF_PLUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*,int,int*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7 (listree_t *U, int x) {
  int tp, rpos;
  tree_ext_t *T = FUNC6 (U->root, x);

  if (T == NIL) {
    rpos = FUNC1 (U, x);
    if (rpos <= 0 || U->A[U->N - rpos] != x) {
      FUNC2 (stderr, "listree_delete: T=%p rpos=%d U->A=%p U->N=%d U->last_A=%d U->root=%d U->A[N-rpos]=%d x=%d\n", T, rpos, U->A, U->N, U->last_A, U->root, rpos > 0 ? U->A[U->N - rpos] : -1, x);
      FUNC0 (rpos > 0 && U->A[U->N - rpos] == x);
    }
    U->root = FUNC5 (U->root, x, (FUNC3 () << 2) + TF_MINUS, rpos);
  } else {
    tp = T->y & 3;
    rpos = T->rpos;
    FUNC0 (tp == TF_PLUS);
    U->root = FUNC4 (U->root, x);
//    if (tp != 1) {
//      U->root = tree_ext_insert (U->root, x, (lrand48 () << 2) + 3, rpos);
//    }
  }
}