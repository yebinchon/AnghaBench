#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_4__ {int fpc; } ;
struct TYPE_5__ {TYPE_1__ fpu; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;

/* Variables and functions */
 int FPC_DXC_MASK ; 
 int /*<<< orphan*/  ILL_ILLOPN ; 
 int /*<<< orphan*/  SIGILL ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct pt_regs *regs)
{
	FUNC2();
	if (current->thread.fpu.fpc & FPC_DXC_MASK)
		FUNC0(regs, current->thread.fpu.fpc);
	else
		FUNC1(regs, SIGILL, ILL_ILLOPN, "data exception");
}