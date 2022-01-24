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
struct tl_expression {char* text; int section; struct tl_expression* next; } ;
struct tl_compiler {struct tl_expression* expr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,struct tl_expression*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2 (struct tl_compiler *C, char *msg, struct tl_expression *E) {
  int i;
  FUNC1 (stderr, "before %s (E: %p, E->text: %s)\n", msg, E, E->text);
  for (i = 0; i < 2; i++) {
    struct tl_expression *L = &C->expr[i], *E;
    for (E = L->next; E != L; E = E->next) {
      FUNC0 (E->section == i);
    }
  }
}