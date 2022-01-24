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
struct thread_info {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {unsigned long ksp; unsigned long ksp_limit; scalar_t__ tidr; int /*<<< orphan*/  dscr; int /*<<< orphan*/  dscr_inherit; int /*<<< orphan*/ * vr_save_area; int /*<<< orphan*/ * fp_save_area; int /*<<< orphan*/ ** ptrace_bps; struct pt_regs* regs; } ;
struct task_struct {int flags; TYPE_2__ thread; } ;
struct pt_regs {unsigned long* gpr; int msr; void* nip; int /*<<< orphan*/  ppr; int /*<<< orphan*/  softe; } ;
struct TYPE_4__ {int /*<<< orphan*/  dscr_inherit; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 unsigned long CLONE_SETTLS ; 
 int /*<<< orphan*/  CPU_FTR_DSCR ; 
 int /*<<< orphan*/  CPU_FTR_HAS_PPR ; 
 int /*<<< orphan*/  DEFAULT_PPR ; 
 int /*<<< orphan*/  IRQS_ENABLED ; 
 int MSR_FP ; 
 int MSR_VEC ; 
 int MSR_VSX ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  SPRN_DSCR ; 
 scalar_t__ STACK_FRAME_OVERHEAD ; 
 unsigned long THREAD_SIZE ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 int /*<<< orphan*/  _TIF_RESTOREALL ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 struct pt_regs* FUNC3 () ; 
 scalar_t__ FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,unsigned long) ; 
 scalar_t__ FUNC11 (struct task_struct*) ; 
 struct thread_info* FUNC12 (struct task_struct*) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(unsigned long clone_flags, unsigned long usp,
		unsigned long kthread_arg, struct task_struct *p,
		unsigned long tls)
{
	struct pt_regs *childregs, *kregs;
	extern void FUNC15(void);
	extern void FUNC16(void);
	void (*f)(void);
	unsigned long sp = (unsigned long)FUNC11(p) + THREAD_SIZE;
	struct thread_info *ti = FUNC12(p);

	FUNC6(p);

	/* Copy registers */
	sp -= sizeof(struct pt_regs);
	childregs = (struct pt_regs *) sp;
	if (FUNC13(p->flags & PF_KTHREAD)) {
		/* kernel thread */
		FUNC7(childregs, 0, sizeof(struct pt_regs));
		childregs->gpr[1] = sp + sizeof(struct pt_regs);
		/* function */
		if (usp)
			childregs->gpr[14] = FUNC9((void *)usp);
#ifdef CONFIG_PPC64
		clear_tsk_thread_flag(p, TIF_32BIT);
		childregs->softe = IRQS_ENABLED;
#endif
		childregs->gpr[15] = kthread_arg;
		p->thread.regs = NULL;	/* no user register state */
		ti->flags |= _TIF_RESTOREALL;
		f = ret_from_kernel_thread;
	} else {
		/* user thread */
		struct pt_regs *regs = FUNC3();
		FUNC0(regs);
		*childregs = *regs;
		if (usp)
			childregs->gpr[1] = usp;
		p->thread.regs = childregs;
		childregs->gpr[3] = 0;  /* Result from fork() */
		if (clone_flags & CLONE_SETTLS) {
#ifdef CONFIG_PPC64
			if (!is_32bit_task())
				childregs->gpr[13] = tls;
			else
#endif
				childregs->gpr[2] = tls;
		}

		f = ret_from_fork;
	}
	childregs->msr &= ~(MSR_FP|MSR_VEC|MSR_VSX);
	sp -= STACK_FRAME_OVERHEAD;

	/*
	 * The way this works is that at some point in the future
	 * some task will call _switch to switch to the new task.
	 * That will pop off the stack frame created below and start
	 * the new task running at ret_from_fork.  The new task will
	 * do some house keeping and then return from the fork or clone
	 * system call, using the stack frame created above.
	 */
	((unsigned long *)sp)[0] = 0;
	sp -= sizeof(struct pt_regs);
	kregs = (struct pt_regs *) sp;
	sp -= STACK_FRAME_OVERHEAD;
	p->thread.ksp = sp;
#ifdef CONFIG_PPC32
	p->thread.ksp_limit = (unsigned long)end_of_stack(p);
#endif
#ifdef CONFIG_HAVE_HW_BREAKPOINT
	p->thread.ptrace_bps[0] = NULL;
#endif

	p->thread.fp_save_area = NULL;
#ifdef CONFIG_ALTIVEC
	p->thread.vr_save_area = NULL;
#endif

	FUNC10(p, sp);

#ifdef CONFIG_PPC64 
	if (cpu_has_feature(CPU_FTR_DSCR)) {
		p->thread.dscr_inherit = current->thread.dscr_inherit;
		p->thread.dscr = mfspr(SPRN_DSCR);
	}
	if (cpu_has_feature(CPU_FTR_HAS_PPR))
		childregs->ppr = DEFAULT_PPR;

	p->thread.tidr = 0;
#endif
	kregs->nip = FUNC9(f);
	return 0;
}