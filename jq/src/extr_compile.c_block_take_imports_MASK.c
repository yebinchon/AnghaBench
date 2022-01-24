#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_12__ {int /*<<< orphan*/  constant; } ;
struct TYPE_13__ {scalar_t__ op; TYPE_3__ imm; } ;
typedef  TYPE_4__ inst ;
struct TYPE_14__ {TYPE_2__* first; } ;
typedef  TYPE_5__ block ;
struct TYPE_11__ {scalar_t__ op; TYPE_1__* next; } ;
struct TYPE_10__ {scalar_t__ op; } ;

/* Variables and functions */
 scalar_t__ DEPS ; 
 scalar_t__ MODULEMETA ; 
 scalar_t__ TOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

jv FUNC6(block* body) {
  jv imports = FUNC3();

  /* Parser should never generate TOP before imports */
  FUNC0(!(body->first && body->first->op == TOP && body->first->next &&
        (body->first->next->op == MODULEMETA || body->first->next->op == DEPS)));

  while (body->first && (body->first->op == MODULEMETA || body->first->op == DEPS)) {
    inst* dep = FUNC1(body);
    if (dep->op == DEPS) {
      imports = FUNC4(imports, FUNC5(dep->imm.constant));
    }
    FUNC2(dep);
  }
  return imports;
}