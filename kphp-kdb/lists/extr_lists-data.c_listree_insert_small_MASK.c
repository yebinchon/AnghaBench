#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_ext_small_t ;
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_19__ {scalar_t__ N; TYPE_1__** root; } ;
typedef  TYPE_2__ listree_t ;

/* Variables and functions */
 TYPE_1__* DeletedSubnode ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* NIL ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ TF_MINUS ; 
 int /*<<< orphan*/  TF_PLUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11 (listree_t *LI, object_id_t x, int y) {
  tree_ext_small_t **R = LI->root;
  int rpos;
  tree_ext_small_t *T = FUNC10 (*R, x);
  if (T == NIL) {
    rpos = FUNC3 (LI, x);
    FUNC2 (!rpos || !FUNC7 (FUNC5 (LI, LI->N - rpos), x));
    tree_ext_small_t *node = FUNC6 (x, y, FUNC0 (rpos, TF_PLUS));
    *R = FUNC9 (*R, node->x, node->y, node);
  } else {
    FUNC2 (FUNC1(T) == TF_MINUS);
    DeletedSubnode = 0;
    *R = FUNC8 (*R, x);
    FUNC2 (DeletedSubnode == T);
    FUNC4 (T);
  }
}