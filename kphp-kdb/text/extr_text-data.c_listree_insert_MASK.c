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
struct TYPE_7__ {int y; int rpos; } ;
typedef  TYPE_1__ tree_ext_t ;
struct TYPE_8__ {int* A; int N; int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ listree_t ;

/* Variables and functions */
 TYPE_1__* NIL ; 
 int TF_MINUS ; 
 scalar_t__ TF_PLUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6 (listree_t *U, int x) {
  int tp, rpos;
  tree_ext_t *T = FUNC5 (U->root, x);
  if (T == NIL) {
    rpos = FUNC1 (U, x);
    FUNC0 (rpos >= 0);
    FUNC0 (!rpos || U->A[U->N - rpos] != x);
    U->root = FUNC4 (U->root, x, (FUNC2 () << 2) + TF_PLUS, rpos);
  } else {
    tp = T->y & 3;
    rpos = T->rpos;
    FUNC0 (tp == TF_MINUS);
    U->root = FUNC3 (U->root, x);
//    if (tp != 3) {
//      U->root = tree_ext_insert (U->root, x, (lrand48 () << 2) + 1, rpos);
//    }
  }
}