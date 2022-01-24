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
struct tl_token {int /*<<< orphan*/  text; struct tl_token* next; } ;
struct tl_expression {scalar_t__ type; int flag_expanded; struct tl_token* right; int /*<<< orphan*/  right_name; struct tl_token* left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_token*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tl_token* FUNC5 (struct tl_token*) ; 
 scalar_t__ tlet_polymorphic ; 
 scalar_t__ tlet_polymorphic_instance ; 
 scalar_t__ tlet_simple ; 

void FUNC6 (struct tl_expression *E, struct tl_expression *R) {
  FUNC0 (R->type == tlet_polymorphic);
  FUNC0 (E->type == tlet_polymorphic_instance);
  struct tl_token *L = FUNC5 (R->left);
  struct tl_token *x, *y, *z;
  for (x = L->next; x != NULL; x = x->next) {
    for (y = R->right->next, z = E->left->next; y != NULL; y = y->next, z = z->next) {
      if (!FUNC4 (x->text, y->text)) {
        FUNC2 (&x->text);
        x->text = FUNC1 (z->text);
      }
    }
  }
  E->right = E->left;
  E->left = L;
  E->type = tlet_simple;
  E->right_name = FUNC3 (E->right);
  E->flag_expanded = 1;
}