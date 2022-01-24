#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pt_regs {unsigned long ARM_sp; unsigned long r4; unsigned long r5; unsigned long pc; unsigned long sp; int /*<<< orphan*/  ARM_r3; int /*<<< orphan*/  ARM_cpsr; scalar_t__ ARM_r0; } ;
struct thread_info {int /*<<< orphan*/  stack_canary; int /*<<< orphan*/ * tp_value; struct pt_regs cpu_context; int /*<<< orphan*/  cpu_domain; } ;
struct task_struct {int flags; int /*<<< orphan*/  stack_canary; } ;
struct cpu_context_save {int dummy; } ;

/* Variables and functions */
 unsigned long CLONE_SETTLS ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  SVC_MODE ; 
 int /*<<< orphan*/  THREAD_NOTIFY_COPY ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 struct pt_regs* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ret_from_fork ; 
 struct pt_regs* FUNC6 (struct task_struct*) ; 
 struct thread_info* FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct thread_info*) ; 

int
FUNC9(unsigned long clone_flags, unsigned long stack_start,
	    unsigned long stk_sz, struct task_struct *p)
{
	struct thread_info *thread = FUNC7(p);
	struct pt_regs *childregs = FUNC6(p);

	FUNC5(&thread->cpu_context, 0, sizeof(struct cpu_context_save));

#ifdef CONFIG_CPU_USE_DOMAINS
	/*
	 * Copy the initial value of the domain access control register
	 * from the current thread: thread->addr_limit will have been
	 * copied from the current thread via setup_thread_stack() in
	 * kernel/fork.c
	 */
	thread->cpu_domain = get_domain();
#endif

	if (FUNC4(!(p->flags & PF_KTHREAD))) {
		*childregs = *FUNC1();
		childregs->ARM_r0 = 0;
		if (stack_start)
			childregs->ARM_sp = stack_start;
	} else {
		FUNC5(childregs, 0, sizeof(struct pt_regs));
		thread->cpu_context.r4 = stk_sz;
		thread->cpu_context.r5 = stack_start;
		childregs->ARM_cpsr = SVC_MODE;
	}
	thread->cpu_context.pc = (unsigned long)ret_from_fork;
	thread->cpu_context.sp = (unsigned long)childregs;

	FUNC0(p);

	if (clone_flags & CLONE_SETTLS)
		thread->tp_value[0] = childregs->ARM_r3;
	thread->tp_value[1] = FUNC3();

	FUNC8(THREAD_NOTIFY_COPY, thread);

#ifdef CONFIG_STACKPROTECTOR_PER_TASK
	thread->stack_canary = p->stack_canary;
#endif

	return 0;
}