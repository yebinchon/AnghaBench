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
struct pt_regs {int nip; int /*<<< orphan*/  dar; } ;
typedef  enum ctx_state { ____Placeholder_ctx_state } ctx_state ;
struct TYPE_3__ {int align_ctl; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int BUS_ADRALN ; 
 int EFAULT ; 
 int PR_UNALIGN_SIGBUS ; 
 int SEGV_ACCERR ; 
 int SIGBUS ; 
 int SIGSEGV ; 
 int TM_CAUSE_ALIGNMENT ; 
 int TM_CAUSE_PERSISTENT ; 
 int /*<<< orphan*/  FUNC0 (int,struct pt_regs*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct pt_regs*,int) ; 
 scalar_t__ FUNC9 (struct pt_regs*) ; 

void FUNC10(struct pt_regs *regs)
{
	enum ctx_state prev_state = FUNC4();
	int sig, code, fixed = 0;

	/* We restore the interrupt state now */
	if (!FUNC1(regs))
		FUNC7();

	if (FUNC8(regs, TM_CAUSE_ALIGNMENT | TM_CAUSE_PERSISTENT))
		goto bail;

	/* we don't implement logging of alignment exceptions */
	if (!(current->thread.align_ctl & PR_UNALIGN_SIGBUS))
		fixed = FUNC6(regs);

	if (fixed == 1) {
		regs->nip += 4;	/* skip over emulated instruction */
		FUNC3(regs);
		goto bail;
	}

	/* Operand address was bad */
	if (fixed == -EFAULT) {
		sig = SIGSEGV;
		code = SEGV_ACCERR;
	} else {
		sig = SIGBUS;
		code = BUS_ADRALN;
	}
	if (FUNC9(regs))
		FUNC0(sig, regs, code, regs->dar);
	else
		FUNC2(regs, regs->dar, sig);

bail:
	FUNC5(prev_state);
}