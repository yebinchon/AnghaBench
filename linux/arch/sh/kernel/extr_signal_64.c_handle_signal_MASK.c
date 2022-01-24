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
struct pt_regs {int dummy; } ;
struct TYPE_3__ {int sa_flags; } ;
struct TYPE_4__ {TYPE_1__ sa; } ;
struct ksignal {TYPE_2__ ka; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int SA_SIGINFO ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int FUNC0 (struct ksignal*,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int FUNC1 (struct ksignal*,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,struct ksignal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ksignal *ksig, struct pt_regs *regs)
{
	sigset_t *oldset = FUNC2();
	int ret;

	/* Set up the stack frame */
	if (ksig->ka.sa.sa_flags & SA_SIGINFO)
		ret = FUNC1(ksig, oldset, regs);
	else
		ret = FUNC0(ksig, oldset, regs);

	FUNC3(ret, ksig, FUNC4(TIF_SINGLESTEP));
}