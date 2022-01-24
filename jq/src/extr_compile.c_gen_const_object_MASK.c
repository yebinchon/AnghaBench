#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_8__ {int /*<<< orphan*/  constant; } ;
struct TYPE_9__ {scalar_t__ op; struct TYPE_9__* next; TYPE_1__ imm; } ;
typedef  TYPE_2__ inst ;
struct TYPE_10__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; TYPE_2__* first; } ;
typedef  TYPE_3__ block ;

/* Variables and functions */
 scalar_t__ INSERT ; 
 scalar_t__ JV_KIND_STRING ; 
 scalar_t__ LOADK ; 
 scalar_t__ PUSHK_UNDER ; 
 scalar_t__ SUBEXP_BEGIN ; 
 scalar_t__ SUBEXP_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

block FUNC8(block expr) {
  int is_const = 1;
  jv o = FUNC6();
  jv k = FUNC5();
  jv v = FUNC5();
  for (inst *i = expr.first; i; i = i->next) {
    if (i->op == PUSHK_UNDER) {
      k = FUNC2(i->imm.constant);
      i = i->next;
    } else if (i->op != SUBEXP_BEGIN ||
        i->next == NULL ||
        i->next->op != LOADK ||
        i->next->next == NULL ||
        i->next->next->op != SUBEXP_END) {
      is_const = 0;
      break;
    } else {
      k = FUNC2(i->next->imm.constant);
      i = i->next->next->next;
    }
    if (i != NULL && i->op == PUSHK_UNDER) {
      v = FUNC2(i->imm.constant);
      i = i->next;
    } else if (i == NULL ||
        i->op != SUBEXP_BEGIN ||
        i->next == NULL ||
        i->next->op != LOADK ||
        i->next->next == NULL ||
        i->next->next->op != SUBEXP_END) {
      is_const = 0;
      break;
    } else {
      v = FUNC2(i->next->imm.constant);
      i = i->next->next->next;
    }
    if (i == NULL || i->op != INSERT) {
      is_const = 0;
      break;
    }
    if (FUNC4(k) != JV_KIND_STRING) {
      is_const = 0;
      break;
    }
    o = FUNC7(o, k, v);
    k = FUNC5();
    v = FUNC5();
  }
  if (!is_const) {
    FUNC3(o);
    FUNC3(k);
    FUNC3(v);
    block b = {0,0};
    return b;
  }
  FUNC0(expr);
  return FUNC1(o);
}