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
struct tl_var {int flags; } ;
struct tl_combinator_tree {scalar_t__ act; char* data; struct tl_combinator_tree* right; struct tl_combinator_tree* left; } ;

/* Variables and functions */
 scalar_t__ act_var ; 
 int /*<<< orphan*/  FUNC0 (struct tl_var*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct tl_var* FUNC2 (char*,int /*<<< orphan*/ ) ; 

void FUNC3 (struct tl_combinator_tree *T) {
  if (!T) { return; }
  if (T->act == act_var) {
    char *id = ((struct tl_combinator_tree *)(T->data))->data;
    struct tl_var *v = FUNC2 (id, FUNC1 (id));
    FUNC0 (v);
    v->flags |= 1;
  }
  FUNC3 (T->left);
  FUNC3 (T->right);
}