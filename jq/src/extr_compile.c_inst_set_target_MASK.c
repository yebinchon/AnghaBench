#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int last; TYPE_2__* first; } ;
typedef  TYPE_3__ block ;
struct TYPE_11__ {int flags; } ;
struct TYPE_8__ {int target; } ;
struct TYPE_9__ {TYPE_1__ imm; int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int OP_HAS_BRANCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(block b, block target) {
  FUNC0(FUNC1(b));
  FUNC0(FUNC2(b.first->op)->flags & OP_HAS_BRANCH);
  FUNC0(target.last);
  b.first->imm.target = target.last;
}