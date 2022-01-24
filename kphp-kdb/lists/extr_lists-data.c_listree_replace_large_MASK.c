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
typedef  int /*<<< orphan*/  tree_ext_small_t ;
struct TYPE_10__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_ext_large_t ;
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_11__ {scalar_t__ N; TYPE_1__** root; } ;
typedef  TYPE_2__ listree_direct_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ TF_MINUS ; 
 int /*<<< orphan*/  TF_ZERO ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree_ext_large_t *FUNC12 (listree_direct_t *LD, object_id_t x) {
  tree_ext_large_t **R = LD->root;
  int rpos;
  tree_ext_small_t *T = FUNC11 (FUNC3 (*R), x);
  if (T == NIL) {
    rpos = FUNC5 (LD, x);
    FUNC4 (rpos > 0 && FUNC9 (FUNC6 (LD, LD->N - rpos), x));
    tree_ext_large_t *node = FUNC8 (x, FUNC7 (), FUNC1 (rpos, TF_ZERO));
    *R = FUNC0 (FUNC10 (FUNC3 (*R), node->x, node->y, FUNC3 (node)));
    return node;
  } else {
    FUNC4 (FUNC2 (T) != TF_MINUS);
    return FUNC0 (T);
  }
}