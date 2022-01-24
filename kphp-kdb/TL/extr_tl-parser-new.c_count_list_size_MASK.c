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
struct tl_combinator_tree {scalar_t__ type; struct tl_combinator_tree* right; struct tl_combinator_tree* left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ type_list ; 
 scalar_t__ type_list_item ; 

int FUNC1 (struct tl_combinator_tree *T) {
  FUNC0 (T->type == type_list || T->type == type_list_item);
  if (T->type == type_list_item) {
    return 1;
  } else {
    return FUNC1 (T->left) + FUNC1 (T->right);
  }
}