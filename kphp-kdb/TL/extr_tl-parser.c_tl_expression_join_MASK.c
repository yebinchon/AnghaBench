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
struct tl_expression {struct tl_token* right; int /*<<< orphan*/  magic; struct tl_token* left; } ;
struct tl_compiler {int dummy; } ;
struct tl_buffer {int /*<<< orphan*/  buff; scalar_t__ pos; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tl_compiler*,struct tl_expression*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_buffer*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct tl_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct tl_buffer*,char*,int /*<<< orphan*/ ) ; 

char *FUNC7 (struct tl_compiler *C, struct tl_expression *E, int output_magic) {
  struct tl_token *T;
  struct tl_buffer b;
  FUNC5 (&b);
  for (T = E->left; T != NULL; T = T->next) {
    if (b.pos) {
      FUNC2 (&b, ' ');
    }
    FUNC3 (&b, T->text);
    if (output_magic && T == E->left) {
      FUNC6 (&b, "#%x", E->magic);
    }
  }
  if (E->right) {
    FUNC2 (&b, ' ');
    FUNC2 (&b, '=');
    for (T = E->right; T != NULL; T = T->next) {
      FUNC2 (&b, ' ');
      FUNC3 (&b, T->text);
    }
  }
  FUNC2 (&b, 0);
  int r = FUNC1 (C, E, b.buff);
  if (r < 0) {
    FUNC4 (&b);
    return NULL;
  }
  char *res = FUNC0 (b.buff);
  FUNC4 (&b);
  return res;
}