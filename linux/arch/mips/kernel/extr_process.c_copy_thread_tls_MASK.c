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
struct thread_info {unsigned long tp_value; int /*<<< orphan*/  addr_limit; } ;
struct TYPE_2__ {int cp0_status; unsigned long reg16; unsigned long reg17; unsigned long reg29; unsigned long reg31; int /*<<< orphan*/  bd_emu_frame; } ;
struct task_struct {int flags; TYPE_1__ thread; } ;
struct pt_regs {unsigned long cp0_status; unsigned long* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_EMUFRAME_NONE ; 
 unsigned long CLONE_SETTLS ; 
 int /*<<< orphan*/  KERNEL_DS ; 
 int PF_KTHREAD ; 
 int ST0_CU1 ; 
 int ST0_CU2 ; 
 unsigned long ST0_EXL ; 
 unsigned long ST0_IEC ; 
 unsigned long ST0_IEP ; 
 unsigned long ST0_KUC ; 
 unsigned long ST0_KUP ; 
 unsigned long THREAD_SIZE ; 
 int /*<<< orphan*/  TIF_FPUBOUND ; 
 int /*<<< orphan*/  TIF_MSA_CTX_LIVE ; 
 int /*<<< orphan*/  TIF_USEDFPU ; 
 int /*<<< orphan*/  TIF_USEDMSA ; 
 int /*<<< orphan*/  USER_DS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct pt_regs* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 () ; 
 scalar_t__ ret_from_fork ; 
 scalar_t__ ret_from_kernel_thread ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 struct thread_info* FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(unsigned long clone_flags, unsigned long usp,
	unsigned long kthread_arg, struct task_struct *p, unsigned long tls)
{
	struct thread_info *ti = FUNC6(p);
	struct pt_regs *childregs, *regs = FUNC2();
	unsigned long childksp;

	childksp = (unsigned long)FUNC5(p) + THREAD_SIZE - 32;

	/* set up new TSS. */
	childregs = (struct pt_regs *) childksp - 1;
	/*  Put the stack after the struct pt_regs.  */
	childksp = (unsigned long) childregs;
	p->thread.cp0_status = FUNC4() & ~(ST0_CU2|ST0_CU1);
	if (FUNC7(p->flags & PF_KTHREAD)) {
		/* kernel thread */
		unsigned long status = p->thread.cp0_status;
		FUNC3(childregs, 0, sizeof(struct pt_regs));
		ti->addr_limit = KERNEL_DS;
		p->thread.reg16 = usp; /* fn */
		p->thread.reg17 = kthread_arg;
		p->thread.reg29 = childksp;
		p->thread.reg31 = (unsigned long) ret_from_kernel_thread;
#if defined(CONFIG_CPU_R3000) || defined(CONFIG_CPU_TX39XX)
		status = (status & ~(ST0_KUP | ST0_IEP | ST0_IEC)) |
			 ((status & (ST0_KUC | ST0_IEC)) << 2);
#else
		status |= ST0_EXL;
#endif
		childregs->cp0_status = status;
		return 0;
	}

	/* user thread */
	*childregs = *regs;
	childregs->regs[7] = 0; /* Clear error flag */
	childregs->regs[2] = 0; /* Child gets zero as return value */
	if (usp)
		childregs->regs[29] = usp;
	ti->addr_limit = USER_DS;

	p->thread.reg29 = (unsigned long) childregs;
	p->thread.reg31 = (unsigned long) ret_from_fork;

	/*
	 * New tasks lose permission to use the fpu. This accelerates context
	 * switching for most programs since they don't use the fpu.
	 */
	childregs->cp0_status &= ~(ST0_CU2|ST0_CU1);

	FUNC1(p, TIF_USEDFPU);
	FUNC1(p, TIF_USEDMSA);
	FUNC1(p, TIF_MSA_CTX_LIVE);

#ifdef CONFIG_MIPS_MT_FPAFF
	clear_tsk_thread_flag(p, TIF_FPUBOUND);
#endif /* CONFIG_MIPS_MT_FPAFF */

	FUNC0(&p->thread.bd_emu_frame, BD_EMUFRAME_NONE);

	if (clone_flags & CLONE_SETTLS)
		ti->tp_value = tls;

	return 0;
}