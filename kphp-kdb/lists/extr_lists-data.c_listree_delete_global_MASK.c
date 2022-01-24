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
typedef  TYPE_1__ tree_ext_global_t ;
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_19__ {scalar_t__ N; TYPE_1__** root; } ;
typedef  TYPE_2__ listree_global_t ;
typedef  scalar_t__ global_id_t ;

/* Variables and functions */
 TYPE_1__* DeletedSubnode_global ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* NILG ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TF_MINUS ; 
 scalar_t__ TF_PLUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,scalar_t__) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC11 (listree_global_t *LG, global_id_t x, object_id_t z) {
  tree_ext_global_t **R = LG->root;
  int rpos;
  tree_ext_global_t *T = FUNC10 (*R, x);

  if (T == NILG) {
    rpos = FUNC3 (LG, x);
    FUNC2 (rpos > 0 && FUNC5 (LG, LG->N - rpos) == x);
    tree_ext_global_t *node = FUNC7 (x, FUNC6 (), FUNC0 (rpos, TF_MINUS), z);
    *R = FUNC9 (*R, node->x, node->y, node);
  } else {
    FUNC2 (FUNC1(T) == TF_PLUS);
    DeletedSubnode_global = 0;
    *R = FUNC8 (*R, x);
    FUNC2 (DeletedSubnode_global == T);
    FUNC4 (T);
  }
}