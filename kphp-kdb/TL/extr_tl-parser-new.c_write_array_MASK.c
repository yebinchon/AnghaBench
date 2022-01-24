#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree_var_value_t ;
struct tl_combinator_tree {int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;

/* Variables and functions */
 int TLS_ARRAY ; 
 int TLS_TREE_ARRAY ; 
 int schema_version ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 

void FUNC2 (struct tl_combinator_tree *T, tree_var_value_t **v, int *last_var) {
  if (schema_version == 1) {
    FUNC0 (TLS_TREE_ARRAY);
  } else if (schema_version == 2) {
    FUNC0 (TLS_ARRAY);
  } else {
    FUNC0 (-8);
  }
  FUNC1 (T->left, 0, v, last_var);
  FUNC1 (T->right, 0, v, last_var);
}