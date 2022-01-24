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
struct task_struct {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct pt_regs {unsigned long sp; unsigned long pc; int /*<<< orphan*/  orig_gpr11; int /*<<< orphan*/ * gpr; int /*<<< orphan*/  sr; } ;

/* Variables and functions */
 int THREAD_SIZE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long current ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int kstack_depth_to_print ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(struct pt_regs *regs,
		      unsigned long ea, unsigned long vector)
{
	int i;
	unsigned long addr, stack = regs->sp;

	FUNC2("\n\r[nommu_dump_state] :: ea %lx, vector %lx\n\r", ea, vector);

	FUNC2("CPU #: %d\n"
	       "   PC: %08lx    SR: %08lx    SP: %08lx\n",
	       0, regs->pc, regs->sr, regs->sp);
	FUNC2("GPR00: %08lx GPR01: %08lx GPR02: %08lx GPR03: %08lx\n",
	       0L, regs->gpr[1], regs->gpr[2], regs->gpr[3]);
	FUNC2("GPR04: %08lx GPR05: %08lx GPR06: %08lx GPR07: %08lx\n",
	       regs->gpr[4], regs->gpr[5], regs->gpr[6], regs->gpr[7]);
	FUNC2("GPR08: %08lx GPR09: %08lx GPR10: %08lx GPR11: %08lx\n",
	       regs->gpr[8], regs->gpr[9], regs->gpr[10], regs->gpr[11]);
	FUNC2("GPR12: %08lx GPR13: %08lx GPR14: %08lx GPR15: %08lx\n",
	       regs->gpr[12], regs->gpr[13], regs->gpr[14], regs->gpr[15]);
	FUNC2("GPR16: %08lx GPR17: %08lx GPR18: %08lx GPR19: %08lx\n",
	       regs->gpr[16], regs->gpr[17], regs->gpr[18], regs->gpr[19]);
	FUNC2("GPR20: %08lx GPR21: %08lx GPR22: %08lx GPR23: %08lx\n",
	       regs->gpr[20], regs->gpr[21], regs->gpr[22], regs->gpr[23]);
	FUNC2("GPR24: %08lx GPR25: %08lx GPR26: %08lx GPR27: %08lx\n",
	       regs->gpr[24], regs->gpr[25], regs->gpr[26], regs->gpr[27]);
	FUNC2("GPR28: %08lx GPR29: %08lx GPR30: %08lx GPR31: %08lx\n",
	       regs->gpr[28], regs->gpr[29], regs->gpr[30], regs->gpr[31]);
	FUNC2("  RES: %08lx oGPR11: %08lx\n",
	       regs->gpr[11], regs->orig_gpr11);

	FUNC2("Process %s (pid: %d, stackpage=%08lx)\n",
	       ((struct task_struct *)(FUNC0(current)))->comm,
	       ((struct task_struct *)(FUNC0(current)))->pid,
	       (unsigned long)current);

	FUNC2("\nStack: ");
	FUNC2("Stack dump [0x%08lx]:\n", (unsigned long)stack);
	for (i = 0; i < kstack_depth_to_print; i++) {
		if (((long)stack & (THREAD_SIZE - 1)) == 0)
			break;
		stack++;

		FUNC2("%lx :: sp + %02d: 0x%08lx\n", stack, i * 4,
		       *((unsigned long *)(FUNC0(stack))));
	}
	FUNC2("\n");

	FUNC2("Call Trace:   ");
	i = 1;
	while (((long)stack & (THREAD_SIZE - 1)) != 0) {
		addr = *((unsigned long *)FUNC0(stack));
		stack++;

		if (FUNC1(addr)) {
			if (i && ((i % 6) == 0))
				FUNC2("\n ");
			FUNC2(" [<%08lx>]", addr);
			i++;
		}
	}
	FUNC2("\n");

	FUNC2("\nCode: ");

	for (i = -24; i < 24; i++) {
		unsigned char c;
		c = ((unsigned char *)(FUNC0(regs->pc)))[i];

		if (i == 0)
			FUNC2("(%02x) ", c);
		else
			FUNC2("%02x ", c);
	}
	FUNC2("\n");
}