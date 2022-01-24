#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {unsigned long compat_sp; unsigned long sp; unsigned long x19; unsigned long x20; unsigned long pc; int /*<<< orphan*/  pmr_save; int /*<<< orphan*/  pstate; scalar_t__* regs; } ;
struct TYPE_3__ {scalar_t__ tp_value; } ;
struct TYPE_4__ {struct pt_regs cpu_context; TYPE_1__ uw; } ;
struct task_struct {int flags; TYPE_2__ thread; } ;
struct cpu_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM64_HAS_UAO ; 
 scalar_t__ ARM64_SSBD_FORCE_DISABLE ; 
 unsigned long CLONE_SETTLS ; 
 int /*<<< orphan*/  CONFIG_ARM64_UAO ; 
 int /*<<< orphan*/  GIC_PRIO_IRQON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  PSR_MODE_EL1h ; 
 int /*<<< orphan*/  PSR_UAO_BIT ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct pt_regs* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ ret_from_fork ; 
 int /*<<< orphan*/  FUNC10 (struct pt_regs*) ; 
 scalar_t__ FUNC11 () ; 
 struct pt_regs* FUNC12 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*) ; 
 int /*<<< orphan*/ * FUNC14 (struct task_struct*) ; 
 int /*<<< orphan*/  tpidr_el0 ; 

int FUNC15(unsigned long clone_flags, unsigned long stack_start,
		unsigned long stk_sz, struct task_struct *p)
{
	struct pt_regs *childregs = FUNC12(p);

	FUNC7(&p->thread.cpu_context, 0, sizeof(struct cpu_context));

	/*
	 * In case p was allocated the same task_struct pointer as some
	 * other recently-exited task, make sure p is disassociated from
	 * any cpu that may have run that now-exited task recently.
	 * Otherwise we could erroneously skip reloading the FPSIMD
	 * registers for p.
	 */
	FUNC4(p);

	if (FUNC6(!(p->flags & PF_KTHREAD))) {
		*childregs = *FUNC3();
		childregs->regs[0] = 0;

		/*
		 * Read the current TLS pointer from tpidr_el0 as it may be
		 * out-of-sync with the saved value.
		 */
		*FUNC14(p) = FUNC9(tpidr_el0);

		if (stack_start) {
			if (FUNC5(FUNC13(p)))
				childregs->compat_sp = stack_start;
			else
				childregs->sp = stack_start;
		}

		/*
		 * If a TLS pointer was passed to clone (4th argument), use it
		 * for the new thread.
		 */
		if (clone_flags & CLONE_SETTLS)
			p->thread.uw.tp_value = childregs->regs[3];
	} else {
		FUNC7(childregs, 0, sizeof(struct pt_regs));
		childregs->pstate = PSR_MODE_EL1h;
		if (FUNC0(CONFIG_ARM64_UAO) &&
		    FUNC2(ARM64_HAS_UAO))
			childregs->pstate |= PSR_UAO_BIT;

		if (FUNC1() == ARM64_SSBD_FORCE_DISABLE)
			FUNC10(childregs);

		if (FUNC11())
			childregs->pmr_save = GIC_PRIO_IRQON;

		p->thread.cpu_context.x19 = stack_start;
		p->thread.cpu_context.x20 = stk_sz;
	}
	p->thread.cpu_context.pc = (unsigned long)ret_from_fork;
	p->thread.cpu_context.sp = (unsigned long)childregs;

	FUNC8(p);

	return 0;
}