#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  var_ltree_x_t ;
struct TYPE_6__ {struct TYPE_6__* right; struct TYPE_6__* left; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_ext_large_t ;

/* Variables and functions */
 scalar_t__ NIL ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
#define  TF_MINUS 129 
#define  TF_PLUS 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_list_id ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  object_tree ; 
 int /*<<< orphan*/  tot_list_entries ; 

__attribute__((used)) static void FUNC5 (tree_ext_large_t *T, int delete_from_object_tree) {
  static var_ltree_x_t ltx;
  if (FUNC1(T) != NIL) {
    switch (FUNC0(T)) {
    case TF_PLUS:
      FUNC2 (current_list_id, T->x, &ltx);
      if (delete_from_object_tree) {
        object_tree = FUNC4 (object_tree, ltx);
      }
      tot_list_entries--;
      break;
    case TF_MINUS:
      tot_list_entries++;
    }
    FUNC5 (T->left, delete_from_object_tree);
    FUNC5 (T->right, delete_from_object_tree);
    FUNC3 (T);
  }
}