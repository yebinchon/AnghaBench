#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opcode ;
struct TYPE_10__ {int target; } ;
struct TYPE_11__ {TYPE_1__ imm; } ;
typedef  TYPE_2__ inst ;
struct TYPE_12__ {int last; } ;
typedef  TYPE_3__ block ;
struct TYPE_13__ {int flags; } ;

/* Variables and functions */
 int OP_HAS_BRANCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 

block FUNC4(opcode op, block target) {
  FUNC0(FUNC3(op)->flags & OP_HAS_BRANCH);
  FUNC0(target.last);
  inst* i = FUNC2(op);
  i->imm.target = target.last;
  return FUNC1(i);
}