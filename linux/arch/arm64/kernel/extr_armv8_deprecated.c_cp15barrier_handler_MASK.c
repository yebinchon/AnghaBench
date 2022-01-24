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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int /*<<< orphan*/  pc; int /*<<< orphan*/  pstate; } ;
struct TYPE_2__ {scalar_t__ pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
#define  ARM_OPCODE_CONDTEST_FAIL 130 
#define  ARM_OPCODE_CONDTEST_PASS 129 
#define  ARM_OPCODE_CONDTEST_UNCOND 128 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  PERF_COUNT_SW_EMULATION_FAULTS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sy ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pt_regs *regs, u32 instr)
{
	FUNC6(PERF_COUNT_SW_EMULATION_FAULTS, 1, regs, regs->pc);

	switch (FUNC0(instr, regs->pstate)) {
	case ARM_OPCODE_CONDTEST_PASS:
		break;
	case ARM_OPCODE_CONDTEST_FAIL:
		/* Condition failed - return to next instruction */
		goto ret;
	case ARM_OPCODE_CONDTEST_UNCOND:
		/* If unconditional encoding - not a barrier instruction */
		return -EFAULT;
	default:
		return -EINVAL;
	}

	switch (FUNC1(instr)) {
	case 10:
		/*
		 * dmb - mcr p15, 0, Rt, c7, c10, 5
		 * dsb - mcr p15, 0, Rt, c7, c10, 4
		 */
		if (FUNC2(instr) == 5) {
			FUNC4(sy);
			FUNC8(
				"mcr p15, 0, Rt, c7, c10, 5 ; dmb", regs->pc);
		} else {
			FUNC5(sy);
			FUNC8(
				"mcr p15, 0, Rt, c7, c10, 4 ; dsb", regs->pc);
		}
		break;
	case 5:
		/*
		 * isb - mcr p15, 0, Rt, c7, c5, 4
		 *
		 * Taking an exception or returning from one acts as an
		 * instruction barrier. So no explicit barrier needed here.
		 */
		FUNC8(
			"mcr p15, 0, Rt, c7, c5, 4 ; isb", regs->pc);
		break;
	}

ret:
	FUNC7("\"%s\" (%ld) uses deprecated CP15 Barrier instruction at 0x%llx\n",
			current->comm, (unsigned long)current->pid, regs->pc);

	FUNC3(regs, 4);
	return 0;
}