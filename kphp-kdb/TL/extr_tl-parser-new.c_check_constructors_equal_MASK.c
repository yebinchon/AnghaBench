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
struct tl_combinator_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** _T ; 
 int __tok ; 
 int /*<<< orphan*/  check_nat_val ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tl_combinator_tree*,struct tl_combinator_tree*,int /*<<< orphan*/ **) ; 

int FUNC2 (struct tl_combinator_tree *L, struct tl_combinator_tree *R, tree_var_value_t **T) {
  if (!FUNC1 (L, R, T)) { return 0; }
  __tok = 1;
  _T = T;
  FUNC0 (*T, check_nat_val);
  return __tok;
}