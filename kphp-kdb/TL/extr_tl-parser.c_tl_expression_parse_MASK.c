#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tl_expression {char* text; scalar_t__ type; scalar_t__ section; unsigned int magic; TYPE_1__* right; void* right_name; TYPE_2__* left; struct tl_expression* next; } ;
struct tl_compiler {int /*<<< orphan*/  errors; struct tl_expression* expr; } ;
struct TYPE_5__ {char* text; } ;
struct TYPE_4__ {scalar_t__ next; } ;

/* Variables and functions */
 scalar_t__ TL_SECTION_FUNCTIONS ; 
 size_t TL_SECTION_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 void* FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,char*,unsigned int*,char*) ; 
 char* FUNC5 (char*,char) ; 
 void* FUNC6 (struct tl_compiler*,struct tl_expression*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tl_expression*,struct tl_expression*) ; 
 scalar_t__ FUNC8 (struct tl_expression*) ; 
 int FUNC9 (struct tl_compiler*,char*,char*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ tlet_polymorphic ; 
 scalar_t__ tlet_polymorphic_instance ; 
 scalar_t__ tlet_simple ; 

int FUNC11 (struct tl_compiler *C, struct tl_expression *E) {
  char *p = FUNC5 (E->text, '=');
  if (p == NULL) {
    E->left = FUNC6 (C, E, E->text, 1);
    if (E->left == NULL) {
      return -1;
    }
    E->right = NULL;
    E->type = tlet_polymorphic_instance;
    if (E->section) {
      return FUNC9 (C, "polymorphic instance in the '---functions---' section, expr: %s", E->text);
    }
    struct tl_expression *A = C->expr[TL_SECTION_TYPES].next;
    while (A != E) {
      FUNC0 (A != &C->expr[TL_SECTION_TYPES]);
      if (A->type == tlet_polymorphic && FUNC10 (A->right, E->left)) {
        FUNC7 (E, A);
        return 0;
      }
      A = A->next;
    }
    return FUNC9 (C, "don't find polymorphic rule, expr: %s", E->text);
  }
  if (p == E->text || p[-1] != ' ' || p[1] != ' ') {
    return FUNC9 (C, "'=' should be surrounded by spaces, expr: %s", E->text);
  }
  if (FUNC5 (p + 1, '=') != NULL) {
    return FUNC9 (C, "'=' occures multiple times, expr: %s", E->text);
  }

  char *first = FUNC3 (E->text, 0, p - E->text - 1);
  E->left = FUNC6 (C, E, first, 0);
  FUNC1 (&first);

  if (E->left == NULL) {
    return FUNC9 (C, "empty lhs, expr: %s\n", E->text);
  }

  char *q = FUNC5 (E->left->text, '#');
  if (q != NULL) {
    unsigned int magic = 0;
    char ch;
    int r = FUNC4 (q + 1, "%x%c", &magic, &ch);
    if (r != 1) {
      return FUNC9 (C, "can't parse combinator magic number, expr: %s", E->text);
    }
    E->magic = magic;
    char *old = E->left->text;
    E->left->text = FUNC3 (old, 0, q - old);
    FUNC1 (&old);
  }
  E->type = tlet_simple;
  E->right = FUNC6 (C, E, p + 1, E->section ? 0 : 1);
  if (E->right == NULL) {
    if (!C->errors) {
      return FUNC9 (C, "empty rhs, expr: %s\n", E->text);
    }
    return -1;
  }

  if (E->section == TL_SECTION_FUNCTIONS) {
    E->right_name = FUNC2 (E->right);
    return 0;
  }

  /* type declaration section */
  if (FUNC8 (E)) {
    E->type = tlet_polymorphic;
    return 0;
  }

  if (E->right->next) {
    return FUNC9 (C, "rhs contains more than one word, but it isn't polymorhic (args should be in ['alpha', 'beta', ...]), expr: %s\n", E->text);
  }

  E->right_name = FUNC2 (E->right);

  return 0;
}