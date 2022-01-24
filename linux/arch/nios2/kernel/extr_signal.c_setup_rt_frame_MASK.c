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
struct TYPE_6__ {int /*<<< orphan*/  uc_sigmask; int /*<<< orphan*/  uc_stack; int /*<<< orphan*/  uc_link; int /*<<< orphan*/  uc_flags; } ;
struct rt_sigframe {TYPE_3__ uc; int /*<<< orphan*/  info; } ;
struct pt_regs {unsigned long sp; unsigned long ra; unsigned long r4; unsigned long r5; unsigned long r6; unsigned long ea; } ;
struct TYPE_4__ {int sa_flags; scalar_t__ sa_handler; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;
struct ksignal {scalar_t__ sig; TYPE_2__ ka; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int EFAULT ; 
 int SA_SIGINFO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct rt_sigframe* FUNC5 (struct ksignal*,struct pt_regs*,int) ; 
 int FUNC6 (TYPE_3__*,struct pt_regs*) ; 

__attribute__((used)) static int FUNC7(struct ksignal *ksig, sigset_t *set,
			  struct pt_regs *regs)
{
	struct rt_sigframe *frame;
	int err = 0;

	frame = FUNC5(ksig, regs, sizeof(*frame));

	if (ksig->ka.sa.sa_flags & SA_SIGINFO)
		err |= FUNC2(&frame->info, &ksig->info);

	/* Create the ucontext.  */
	err |= FUNC0(0, &frame->uc.uc_flags);
	err |= FUNC0(0, &frame->uc.uc_link);
	err |= FUNC1(&frame->uc.uc_stack, regs->sp);
	err |= FUNC6(&frame->uc, regs);
	err |= FUNC3(&frame->uc.uc_sigmask, set, sizeof(*set));

	if (err)
		goto give_sigsegv;

	/* Set up to return from userspace; jump to fixed address sigreturn
	   trampoline on kuser page.  */
	regs->ra = (unsigned long) (0x1044);

	/* Set up registers for signal handler */
	regs->sp = (unsigned long) frame;
	regs->r4 = (unsigned long) ksig->sig;
	regs->r5 = (unsigned long) &frame->info;
	regs->r6 = (unsigned long) &frame->uc;
	regs->ea = (unsigned long) ksig->ka.sa.sa_handler;
	return 0;

give_sigsegv:
	FUNC4(ksig->sig);
	return -EFAULT;
}