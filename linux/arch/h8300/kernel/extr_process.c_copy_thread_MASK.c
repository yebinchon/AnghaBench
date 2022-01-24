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
struct TYPE_2__ {unsigned long ksp; int /*<<< orphan*/  usp; } ;
struct task_struct {int flags; TYPE_1__ thread; } ;
struct pt_regs {unsigned long retpc; unsigned long er4; unsigned long er5; scalar_t__ er0; } ;

/* Variables and functions */
 int PF_KTHREAD ; 
 scalar_t__ THREAD_SIZE ; 
 struct pt_regs* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ ret_from_fork ; 
 scalar_t__ ret_from_kernel_thread ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(unsigned long clone_flags,
		unsigned long usp, unsigned long topstk,
		struct task_struct *p)
{
	struct pt_regs *childregs;

	childregs = (struct pt_regs *) (THREAD_SIZE + FUNC3(p)) - 1;

	if (FUNC4(p->flags & PF_KTHREAD)) {
		FUNC1(childregs, 0, sizeof(struct pt_regs));
		childregs->retpc = (unsigned long) ret_from_kernel_thread;
		childregs->er4 = topstk; /* arg */
		childregs->er5 = usp; /* fn */
	}  else {
		*childregs = *FUNC0();
		childregs->er0 = 0;
		childregs->retpc = (unsigned long) ret_from_fork;
		p->thread.usp = usp ?: FUNC2();
	}
	p->thread.ksp = (unsigned long)childregs;

	return 0;
}