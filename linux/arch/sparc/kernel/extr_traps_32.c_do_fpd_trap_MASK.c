#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fsr; int /*<<< orphan*/ * float_regs; int /*<<< orphan*/  fpqdepth; int /*<<< orphan*/ * fpqueue; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int psr; } ;

/* Variables and functions */
 int PSR_EF ; 
 unsigned long PSR_PS ; 
 int /*<<< orphan*/  TIF_USEDFPU ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * init_fregs ; 
 int /*<<< orphan*/  init_fsr ; 
 struct task_struct* last_task_used_math ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

void FUNC8(struct pt_regs *regs, unsigned long pc, unsigned long npc,
		 unsigned long psr)
{
	/* Sanity check... */
	if(psr & PSR_PS)
		FUNC0("Kernel gets FloatingPenguinUnit disabled trap", regs);

	FUNC4(FUNC3() | PSR_EF);    /* Allow FPU ops. */
	regs->psr |= PSR_EF;
#ifndef CONFIG_SMP
	if(last_task_used_math == current)
		return;
	if(last_task_used_math) {
		/* Other processes fpu state, save away */
		struct task_struct *fptask = last_task_used_math;
		FUNC2(&fptask->thread.float_regs[0], &fptask->thread.fsr,
		       &fptask->thread.fpqueue[0], &fptask->thread.fpqdepth);
	}
	last_task_used_math = current;
	if(FUNC7()) {
		FUNC1(&current->thread.float_regs[0], &current->thread.fsr);
	} else {
		/* Set initial sane state. */
		FUNC1(&init_fregs[0], &init_fsr);
		FUNC6();
	}
#else
	if(!used_math()) {
		fpload(&init_fregs[0], &init_fsr);
		set_used_math();
	} else {
		fpload(&current->thread.float_regs[0], &current->thread.fsr);
	}
	set_thread_flag(TIF_USEDFPU);
#endif
}