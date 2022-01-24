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
typedef  scalar_t__ u64 ;
struct pt_regs {scalar_t__* regs; int /*<<< orphan*/  pmr_save; scalar_t__ pc; scalar_t__ sp; scalar_t__ compat_sp; scalar_t__ compat_lr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEFAULT ; 
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*) ; 

void FUNC7(struct pt_regs *regs)
{
	int i, top_reg;
	u64 lr, sp;

	if (FUNC0(regs)) {
		lr = regs->compat_lr;
		sp = regs->compat_sp;
		top_reg = 12;
	} else {
		lr = regs->regs[30];
		sp = regs->sp;
		top_reg = 29;
	}

	FUNC4(KERN_DEFAULT);
	FUNC2(regs);

	if (!FUNC6(regs)) {
		FUNC3("pc : %pS\n", (void *)regs->pc);
		FUNC3("lr : %pS\n", (void *)lr);
	} else {
		FUNC3("pc : %016llx\n", regs->pc);
		FUNC3("lr : %016llx\n", lr);
	}

	FUNC3("sp : %016llx\n", sp);

	if (FUNC5())
		FUNC3("pmr_save: %08llx\n", regs->pmr_save);

	i = top_reg;

	while (i >= 0) {
		FUNC3("x%-2d: %016llx ", i, regs->regs[i]);
		i--;

		if (i % 2 == 0) {
			FUNC1("x%-2d: %016llx ", i, regs->regs[i]);
			i--;
		}

		FUNC1("\n");
	}
}