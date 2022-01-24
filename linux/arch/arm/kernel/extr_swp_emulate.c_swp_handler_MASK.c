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
struct pt_regs {int ARM_pc; unsigned int* uregs; int /*<<< orphan*/  ARM_cpsr; } ;
struct TYPE_2__ {scalar_t__ pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
#define  ARM_OPCODE_CONDTEST_FAIL 130 
#define  ARM_OPCODE_CONDTEST_PASS 129 
#define  ARM_OPCODE_CONDTEST_UNCOND 128 
 int EFAULT ; 
 int EINVAL ; 
 size_t FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERF_COUNT_SW_EMULATION_FAULTS ; 
 int /*<<< orphan*/  RN_OFFSET ; 
 int /*<<< orphan*/  RT2_OFFSET ; 
 int /*<<< orphan*/  RT_OFFSET ; 
 unsigned int TYPE_SWPB ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 unsigned int FUNC3 (unsigned int,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,...) ; 
 scalar_t__ previous_pid ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct pt_regs *regs, unsigned int instr)
{
	unsigned int address, destreg, data, type;
	unsigned int res = 0;

	FUNC4(PERF_COUNT_SW_EMULATION_FAULTS, 1, regs, regs->ARM_pc);

	res = FUNC2(instr, regs->ARM_cpsr);
	switch (res) {
	case ARM_OPCODE_CONDTEST_PASS:
		break;
	case ARM_OPCODE_CONDTEST_FAIL:
		/* Condition failed - return to next instruction */
		regs->ARM_pc += 4;
		return 0;
	case ARM_OPCODE_CONDTEST_UNCOND:
		/* If unconditional encoding - not a SWP, undef */
		return -EFAULT;
	default:
		return -EINVAL;
	}

	if (current->pid != previous_pid) {
		FUNC5("\"%s\" (%ld) uses deprecated SWP{B} instruction\n",
			 current->comm, (unsigned long)current->pid);
		previous_pid = current->pid;
	}

	address = regs->uregs[FUNC0(instr, RN_OFFSET)];
	data	= regs->uregs[FUNC0(instr, RT2_OFFSET)];
	destreg = FUNC0(instr, RT_OFFSET);

	type = instr & TYPE_SWPB;

	FUNC5("addr in r%d->0x%08x, dest is r%d, source in r%d->0x%08x)\n",
		 FUNC0(instr, RN_OFFSET), address,
		 destreg, FUNC0(instr, RT2_OFFSET), data);

	/* Check access in reasonable access range for both SWP and SWPB */
	if (!FUNC1((address & ~3), 4)) {
		FUNC5("SWP{B} emulation: access to %p not allowed!\n",
			 (void *)address);
		res = -EFAULT;
	} else {
		res = FUNC3(address, &data, type);
	}

	if (res == 0) {
		/*
		 * On successful emulation, revert the adjustment to the PC
		 * made in kernel/traps.c in order to resume execution at the
		 * instruction following the SWP{B}.
		 */
		regs->ARM_pc += 4;
		regs->uregs[destreg] = data;
	} else if (res == -EFAULT) {
		/*
		 * Memory errors do not mean emulation failed.
		 * Set up signal info to return SEGV, then return OK
		 */
		FUNC6(regs, address);
	}

	return 0;
}