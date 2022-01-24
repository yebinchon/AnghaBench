#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_6__ {int /*<<< orphan*/  constant; } ;
struct TYPE_7__ {TYPE_1__ imm; } ;
typedef  TYPE_2__ inst ;
typedef  int /*<<< orphan*/  block ;
struct TYPE_8__ {int flags; } ;

/* Variables and functions */
 int OP_HAS_CONSTANT ; 
 int /*<<< orphan*/  PUSHK_UNDER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 

block FUNC4(jv constant) {
  FUNC0(FUNC3(PUSHK_UNDER)->flags & OP_HAS_CONSTANT);
  inst* i = FUNC2(PUSHK_UNDER);
  i->imm.constant = constant;
  return FUNC1(i);
}