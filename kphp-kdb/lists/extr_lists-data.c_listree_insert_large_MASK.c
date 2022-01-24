#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int rpos; } ;
typedef  TYPE_1__ tree_ext_small_t ;
struct TYPE_18__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ tree_ext_large_t ;
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_19__ {scalar_t__ N; TYPE_2__** root; } ;
typedef  TYPE_3__ listree_direct_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* NIL ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ TF_MINUS ; 
 int /*<<< orphan*/  TF_PLUS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree_ext_large_t *FUNC13 (listree_direct_t *LD, object_id_t x) {
  tree_ext_large_t **R = LD->root;
  int rpos;
  tree_ext_small_t *T = FUNC12 (FUNC3 (*R), x);
  if (T == NIL) {
    rpos = FUNC5 (LD, x);
    FUNC4 (!rpos || !FUNC9 (FUNC6 (LD, LD->N - rpos), x));
    tree_ext_large_t *node = FUNC8 (x, FUNC7 (), FUNC1 (rpos, TF_PLUS));
    *R = FUNC0 (FUNC11 (FUNC3 (*R), node->x, node->y, FUNC3 (node)));
    return node;
  } else {
    FUNC4 (FUNC2(T) == TF_MINUS);
    T->rpos &= -4;	// TF_MINUS -> TF_ZERO
    FUNC4 (FUNC10 (FUNC3 (*R), x, 1) == T);
    return FUNC0 (T);
  }
}