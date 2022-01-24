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
struct tl_type {int name; } ;
struct tl_combinator_tree {scalar_t__ act; int /*<<< orphan*/  flags; struct tl_type* data; TYPE_1__* right; struct tl_combinator_tree* left; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int TLS_EXPR_NAT ; 
 int TLS_EXPR_TYPE ; 
 int TLS_TREE_TYPE ; 
 int TLS_TREE_TYPE_VAR ; 
 int TLS_TYPE_EXPR ; 
 int TLS_TYPE_VAR ; 
 scalar_t__ act_arg ; 
 scalar_t__ act_type ; 
 scalar_t__ act_var ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int schema_version ; 
 int FUNC1 (int /*<<< orphan*/ **,struct tl_type*) ; 
 scalar_t__ type_num ; 
 scalar_t__ type_num_value ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6 (struct tl_combinator_tree *T, int cc, tree_var_value_t **v, int *last_var) {
  if (T->act == act_arg) {
    FUNC6 (T->left, cc + 1, v, last_var);
    if (schema_version >= 2) {
      if (T->right->type == type_num_value || T->right->type == type_num) {
        FUNC2 (TLS_EXPR_NAT);
      } else {
        FUNC2 (TLS_EXPR_TYPE);
      }
    }
    FUNC3 (T->right, 0, v, last_var);
  } else {
    FUNC0 (T->act == act_var || T->act == act_type);
    if (T->act == act_var) {
      FUNC0 (!cc);
      if (schema_version == 1) {
        FUNC2 (TLS_TREE_TYPE_VAR);
      } else if (schema_version == 2) {
        FUNC2 (TLS_TYPE_VAR);
      } else {
        FUNC2 (-6);      
      }
      FUNC2 (FUNC1 (v, T->data));
      FUNC5 (T->flags);
      //wint (T->flags);
    } else {
      if (schema_version == 1) {
        FUNC2 (TLS_TREE_TYPE);
      } else if (schema_version == 2) {
        FUNC2 (TLS_TYPE_EXPR);
      } else {
        FUNC2 (-7);
      }
      struct tl_type *t = T->data;
      FUNC2 (t->name);
      FUNC4 (T->flags);
//      wint (T->flags);
      FUNC2 (cc);
//      fprintf (stderr, "cc = %d\n", cc);
    }
  }
}