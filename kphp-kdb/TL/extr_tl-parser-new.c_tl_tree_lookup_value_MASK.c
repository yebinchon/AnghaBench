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
struct tl_combinator_tree {scalar_t__ act; void* data; struct tl_combinator_tree* right; struct tl_combinator_tree* left; } ;

/* Variables and functions */
 scalar_t__ act_var ; 
 struct tl_combinator_tree* FUNC0 (int /*<<< orphan*/ **,void*) ; 

int FUNC1 (struct tl_combinator_tree *L, void *var, tree_var_value_t **T) {
  if (!L) {
    return -1;
  }
  if (L->act == act_var && L->data == var) {
    return 0;
  }
  if (L->act == act_var) {
    struct tl_combinator_tree *E = FUNC0 (T, L->data);
    if (!E) { return -1;}
    else { return FUNC1 (E, var, T); }
  }
  if (FUNC1 (L->left, var, T) >= 0) { return 1; }
  if (FUNC1 (L->right, var, T) >= 0) { return 1; }
  return -1;
}