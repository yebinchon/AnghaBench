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
struct tl_expression {char* text; scalar_t__ type; size_t section; struct tl_expression* rnext; struct tl_expression* rtail; int /*<<< orphan*/ * right_name; int /*<<< orphan*/  flag_expanded; struct tl_expression* prev; struct tl_expression* next; } ;
struct tl_compiler {int /*<<< orphan*/  hm_composite_typename; int /*<<< orphan*/ * hm_combinator; int /*<<< orphan*/ * hm_magic; } ;

/* Variables and functions */
 size_t TL_SECTION_TYPES ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (struct tl_compiler*,struct tl_expression*) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_expression*) ; 
 char* FUNC5 (struct tl_compiler*,struct tl_expression*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct tl_compiler*,struct tl_expression*) ; 
 int FUNC7 (struct tl_compiler*,char*,char*,char*) ; 
 struct tl_expression* FUNC8 (int /*<<< orphan*/ *,struct tl_expression*,int) ; 
 scalar_t__ tlet_simple ; 
 int verbosity ; 

int FUNC9 (struct tl_compiler *C, struct tl_expression *L) {
  struct tl_expression *E, *W;
  for (E = L->next; E != L; E = W) {
    W = E->next;
    if (FUNC6 (C, E) < 0) {
      return -1;
    }
    char *t = FUNC5 (C, E, 0);
    if (t == NULL) {
      return -1;
    }
    FUNC0 (&E->text);
    E->text = t;
    if (FUNC3 (C, E) < 0) {
      return -1;
    }
    if (E->type == tlet_simple) {
      struct tl_expression *A = FUNC8 (&C->hm_magic[E->section], E, 1);
      if (A != E) {
        if (!FUNC2 (A->text, E->text)) {
          if (verbosity >= 1) {
            FUNC1 (stderr, "duplicate expression: %s\n", E->text);
          }
          struct tl_expression *u = E->prev, *v = E->next;
          u->next = v; v->prev = u;
          FUNC4 (E);
          continue;
        } else {
          return FUNC7 (C, "magic collision for expressions %s and %s", A->text, E->text);
        }
      }

      if (!(E->flag_expanded)) {
        A = FUNC8 (&C->hm_combinator[E->section], E, 1);
        if (A != E) {
          return FUNC7 (C, "combinator collision for expressions %s and %s", A->text, E->text);
        }
      }

      if (E->type == tlet_simple && E->right_name != NULL && E->section == TL_SECTION_TYPES) {
        struct tl_expression *A = FUNC8 (&C->hm_composite_typename, E, 1);
        if (A == E) {
          E->rtail = E;
        } else {
          A->rtail->rnext = E;
          A->rtail = E;
        }
        E->rnext = NULL;
      }
    }
  }
  return 0;
}