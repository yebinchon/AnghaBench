#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tl_token {char* text; struct tl_token* next; } ;
struct tl_expression {int flag_visited; char* right_name; TYPE_2__* right; scalar_t__ flag_expanded; TYPE_1__* left; } ;
struct tl_compiler {int dummy; } ;
struct TYPE_4__ {struct tl_token* next; } ;
struct TYPE_3__ {struct tl_token* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_compiler*,char*) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static void FUNC2 (struct tl_compiler *C, struct tl_expression *E) {
  if (E->flag_visited) {
    return;
  }
  E->flag_visited = 1;
  struct tl_token *T;
  for (T = E->left->next; T != NULL; T = T->next) {
    char *q = FUNC1 (T->text, ':');
    if (q == NULL) {
      FUNC0 (C, q);
    } else {
      FUNC0 (C, q+1);
    }
  }

  if (E->flag_expanded) {
    for (T = E->right->next; T != NULL; T = T->next) {
      FUNC0 (C, T->text);
    }
  }

  FUNC0 (C, E->right_name);
}