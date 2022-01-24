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
struct TYPE_4__ {scalar_t__ op; char* symbol; int /*<<< orphan*/  nformals; struct TYPE_4__* next; } ;
typedef  TYPE_1__ inst ;
struct TYPE_5__ {TYPE_1__* first; } ;
typedef  TYPE_2__ block ;

/* Variables and functions */
 scalar_t__ CLOSURE_CREATE ; 
 scalar_t__ CLOSURE_CREATE_C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

jv FUNC5(block body, int omit_underscores) {
  jv funcs = FUNC2(); // Use the keys for set semantics.
  for (inst *pos = body.first; pos != NULL; pos = pos->next) {
    if (pos->op == CLOSURE_CREATE || pos->op == CLOSURE_CREATE_C) {
      if (pos->symbol != NULL && (!omit_underscores || pos->symbol[0] != '_')) {
        funcs = FUNC3(funcs, FUNC4("%s/%i", pos->symbol, pos->nformals), FUNC1());
      }
    }
  }
  return FUNC0(funcs);
}