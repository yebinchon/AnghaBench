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
struct TYPE_2__ {unsigned long sp; unsigned long pc; struct pt_regs* uregs; } ;
struct task_struct {int flags; TYPE_1__ thread; } ;
struct pt_regs {int sr; unsigned long* regs; } ;

/* Variables and functions */
 int PF_KTHREAD ; 
 int SR_FD ; 
 scalar_t__ THREAD_SIZE ; 
 int /*<<< orphan*/ * current ; 
 struct pt_regs* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * last_task_used_math ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (unsigned long) ; 
 scalar_t__ ret_from_fork ; 
 scalar_t__ ret_from_kernel_thread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(unsigned long clone_flags, unsigned long usp,
		unsigned long arg, struct task_struct *p)
{
	struct pt_regs *childregs;

#ifdef CONFIG_SH_FPU
	/* can't happen for a kernel thread */
	if (last_task_used_math == current) {
		enable_fpu();
		save_fpu(current);
		disable_fpu();
		last_task_used_math = NULL;
		current_pt_regs()->sr |= SR_FD;
	}
#endif
	/* Copy from sh version */
	childregs = (struct pt_regs *)(THREAD_SIZE + FUNC6(p)) - 1;
	p->thread.sp = (unsigned long) childregs;

	if (FUNC7(p->flags & PF_KTHREAD)) {
		FUNC3(childregs, 0, sizeof(struct pt_regs));
		childregs->regs[2] = (unsigned long)arg;
		childregs->regs[3] = (unsigned long)usp;
		childregs->sr = (1 << 30); /* not user_mode */
		childregs->sr |= SR_FD; /* Invalidate FPU flag */
		p->thread.pc = (unsigned long) ret_from_kernel_thread;
		return 0;
	}
	*childregs = *FUNC0();

	/*
	 * Sign extend the edited stack.
	 * Note that thread.pc and thread.pc will stay
	 * 32-bit wide and context switch must take care
	 * of NEFF sign extension.
	 */
	if (usp)
		childregs->regs[15] = FUNC4(usp);
	p->thread.uregs = childregs;

	childregs->regs[9] = 0; /* Set return value for child */
	childregs->sr |= SR_FD; /* Invalidate FPU flag */

	p->thread.pc = (unsigned long) ret_from_fork;

	return 0;
}