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
struct task_struct {int dummy; } ;
struct pt_regs {int /*<<< orphan*/  user_regs; } ;
struct TYPE_4__ {int sa_flags; } ;
struct TYPE_3__ {TYPE_2__ sa; } ;
struct ksignal {int sig; TYPE_1__ ka; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int SA_SIGINFO ; 
 int FUNC0 (int,struct ksignal*,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int FUNC1 (int,struct ksignal*,int /*<<< orphan*/ *,struct pt_regs*) ; 
 struct task_struct* current ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ksignal*,struct pt_regs*) ; 
 int FUNC4 (int,struct ksignal*,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,struct ksignal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct task_struct*) ; 

__attribute__((used)) static void FUNC9(struct ksignal *ksig, struct pt_regs *regs)
{
	struct task_struct *tsk = current;
	sigset_t *oldset = FUNC5();
	int usig = ksig->sig;
	int ret;

	FUNC3(ksig, regs);

	/*
	 * Set up the stack frame
	 */
	if (FUNC2()) {
		if (ksig->ka.sa.sa_flags & SA_SIGINFO)
			ret = FUNC1(usig, ksig, oldset, regs);
		else
			ret = FUNC0(usig, ksig, oldset, regs);
	} else {
		ret = FUNC4(usig, ksig, oldset, regs);
	}

	/*
	 * Check that the resulting registers are actually sane.
	 */
	ret |= !FUNC8(&regs->user_regs, current);

	/*
	 * Fast forward the stepping logic so we step into the signal
	 * handler.
	 */
	if (!ret)
		FUNC7(tsk);

	FUNC6(ret, ksig, 0);
}