#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_var_value_t ;
struct tl_combinator_tree {int type; int /*<<< orphan*/  act; struct tl_combinator_tree* right; TYPE_1__* left; } ;
struct TYPE_2__ {int type_flags; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  act_arg ; 
 int /*<<< orphan*/  act_array ; 
 int /*<<< orphan*/  act_type ; 
 int /*<<< orphan*/  act_var ; 
 int /*<<< orphan*/  FUNC0 (struct tl_combinator_tree*) ; 
 int schema_version ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
#define  type_type 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_combinator_tree*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_combinator_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 

void FUNC5 (struct tl_combinator_tree *T, tree_var_value_t **v, int *last_var) {
  if (schema_version >= 1) {
  } else {
    FUNC2 (-20);
  }
  FUNC2 (FUNC1 (v, T->left->data));
  FUNC2 (T->left->type_flags);
//  write_tree (T->right, 0, v, last_var);
  FUNC0 (T);
  T = T->right;
  switch (T->type) {
  case type_type:
    if (T->act == act_array) {
      FUNC3 (T, v, last_var);
    } else if (T->act == act_type || T->act == act_var || T->act == act_arg) {
      FUNC4 (T, 0, v, last_var);
    } else {
      FUNC0 (0);
    }
    break;
  default:
    FUNC0 (0);
  }
}