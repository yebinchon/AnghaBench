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
struct thread_info {int /*<<< orphan*/  addr_limit; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {unsigned long sp; unsigned long pc; scalar_t__ fpu_counter; struct pt_regs* ptrace_bps; int /*<<< orphan*/  dsp_status; } ;
struct task_struct {int flags; TYPE_1__ thread; } ;
struct pt_regs {unsigned long* regs; unsigned long gbr; int /*<<< orphan*/  sr; } ;

/* Variables and functions */
 unsigned long CLONE_SETTLS ; 
 int /*<<< orphan*/  KERNEL_DS ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  SR_FD ; 
 int /*<<< orphan*/  SR_MD ; 
 int /*<<< orphan*/  TS_USEDFPU ; 
 int /*<<< orphan*/  USER_DS ; 
 struct task_struct* current ; 
 struct pt_regs* FUNC0 () ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ret_from_fork ; 
 scalar_t__ ret_from_kernel_thread ; 
 struct pt_regs* FUNC3 (struct task_struct*) ; 
 struct thread_info* FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(unsigned long clone_flags, unsigned long usp,
		unsigned long arg, struct task_struct *p)
{
	struct thread_info *ti = FUNC4(p);
	struct pt_regs *childregs;

#if defined(CONFIG_SH_DSP)
	struct task_struct *tsk = current;

	if (is_dsp_enabled(tsk)) {
		/* We can use the __save_dsp or just copy the struct:
		 * __save_dsp(p);
		 * p->thread.dsp_status.status |= SR_DSP
		 */
		p->thread.dsp_status = tsk->thread.dsp_status;
	}
#endif

	FUNC2(p->thread.ptrace_bps, 0, sizeof(p->thread.ptrace_bps));

	childregs = FUNC3(p);
	p->thread.sp = (unsigned long) childregs;
	if (FUNC5(p->flags & PF_KTHREAD)) {
		FUNC2(childregs, 0, sizeof(struct pt_regs));
		p->thread.pc = (unsigned long) ret_from_kernel_thread;
		childregs->regs[4] = arg;
		childregs->regs[5] = usp;
		childregs->sr = SR_MD;
#if defined(CONFIG_SH_FPU)
		childregs->sr |= SR_FD;
#endif
		ti->addr_limit = KERNEL_DS;
		ti->status &= ~TS_USEDFPU;
		p->thread.fpu_counter = 0;
		return 0;
	}
	*childregs = *FUNC0();

	if (usp)
		childregs->regs[15] = usp;
	ti->addr_limit = USER_DS;

	if (clone_flags & CLONE_SETTLS)
		childregs->gbr = childregs->regs[0];

	childregs->regs[0] = 0; /* Set return value for child */
	p->thread.pc = (unsigned long) ret_from_fork;
	return 0;
}