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
struct tl_expression {scalar_t__ flag_visited; struct tl_expression* next; } ;
struct tl_compiler {struct tl_expression* expr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TL_SECTION_FUNCTIONS ; 
 size_t TL_SECTION_TYPES ; 
 int /*<<< orphan*/  FUNC0 (struct tl_compiler*,struct tl_expression*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tl_compiler*,struct tl_expression*) ; 
 struct tl_expression* FUNC2 (struct tl_compiler*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int FUNC3 (struct tl_compiler *C, char *rpc_function_name, FILE *f) {
  struct tl_expression *F = FUNC2 (C, TL_SECTION_FUNCTIONS, rpc_function_name, NULL);
  if (F == NULL) {
    return -1;
  }
  FUNC0 (C, F);
  F->flag_visited = 0;
  struct tl_expression *E;
  for (E = C->expr[TL_SECTION_TYPES].next; E != &C->expr[TL_SECTION_TYPES]; E = E->next) {
    if (E->flag_visited) {
      FUNC1 (f, C, E);
      E->flag_visited = 0;
    }
  }
  FUNC1 (f, C, F);
  return 0;
}