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
typedef  int /*<<< orphan*/  jv ;
struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {scalar_t__ op; int /*<<< orphan*/  symbol; int /*<<< orphan*/ * bound_by; TYPE_2__ subfn; struct TYPE_4__* next; } ;
typedef  TYPE_1__ inst ;
typedef  TYPE_2__ block ;

/* Variables and functions */
 scalar_t__ JV_KIND_OBJECT ; 
 scalar_t__ STOREV ; 
 scalar_t__ STOREVN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(block b, jv *vars) {
  FUNC0(vars != NULL);
  FUNC0(FUNC1(*vars) == JV_KIND_OBJECT);
  for (inst* i = b.first; i; i = i->next) {
    if (i->subfn.first) {
      FUNC5(i->subfn, vars);
      continue;
    }
    if ((i->op == STOREV || i->op == STOREVN) && i->bound_by == NULL) {
      *vars = FUNC2(*vars, FUNC3(i->symbol), FUNC4());
    }
  }
}