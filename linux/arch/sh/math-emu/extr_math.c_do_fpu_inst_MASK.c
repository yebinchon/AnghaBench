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
struct TYPE_5__ {TYPE_1__* xstate; } ;
struct task_struct {TYPE_2__ thread; } ;
struct sh_fpu_soft_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_4__ {struct sh_fpu_soft_struct softfpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_COUNT_SW_EMULATION_FAULTS ; 
 int TS_USEDFPU ; 
 struct task_struct* current ; 
 int FUNC0 (unsigned short,struct sh_fpu_soft_struct*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_fpu_soft_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct pt_regs*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct task_struct*) ; 

int FUNC4(unsigned short inst, struct pt_regs *regs)
{
	struct task_struct *tsk = current;
	struct sh_fpu_soft_struct *fpu = &(tsk->thread.xstate->softfpu);

	FUNC2(PERF_COUNT_SW_EMULATION_FAULTS, 1, regs, 0);

	if (!(FUNC3(tsk)->status & TS_USEDFPU)) {
		/* initialize once. */
		FUNC1(fpu);
		FUNC3(tsk)->status |= TS_USEDFPU;
	}

	return FUNC0(inst, fpu, regs);
}