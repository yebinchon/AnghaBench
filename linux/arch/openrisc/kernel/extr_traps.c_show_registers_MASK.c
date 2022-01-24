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
struct pt_regs {scalar_t__ pc; int /*<<< orphan*/  orig_gpr11; int /*<<< orphan*/ * gpr; scalar_t__ sp; int /*<<< orphan*/  sr; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 scalar_t__ PAGE_OFFSET ; 
 scalar_t__ FUNC0 (unsigned char,unsigned char*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 

void FUNC5(struct pt_regs *regs)
{
	int i;
	int in_kernel = 1;
	unsigned long esp;

	esp = (unsigned long)(regs->sp);
	if (FUNC4(regs))
		in_kernel = 0;

	FUNC1("CPU #: %d\n"
	       "   PC: %08lx    SR: %08lx    SP: %08lx\n",
	       FUNC3(), regs->pc, regs->sr, regs->sp);
	FUNC1("GPR00: %08lx GPR01: %08lx GPR02: %08lx GPR03: %08lx\n",
	       0L, regs->gpr[1], regs->gpr[2], regs->gpr[3]);
	FUNC1("GPR04: %08lx GPR05: %08lx GPR06: %08lx GPR07: %08lx\n",
	       regs->gpr[4], regs->gpr[5], regs->gpr[6], regs->gpr[7]);
	FUNC1("GPR08: %08lx GPR09: %08lx GPR10: %08lx GPR11: %08lx\n",
	       regs->gpr[8], regs->gpr[9], regs->gpr[10], regs->gpr[11]);
	FUNC1("GPR12: %08lx GPR13: %08lx GPR14: %08lx GPR15: %08lx\n",
	       regs->gpr[12], regs->gpr[13], regs->gpr[14], regs->gpr[15]);
	FUNC1("GPR16: %08lx GPR17: %08lx GPR18: %08lx GPR19: %08lx\n",
	       regs->gpr[16], regs->gpr[17], regs->gpr[18], regs->gpr[19]);
	FUNC1("GPR20: %08lx GPR21: %08lx GPR22: %08lx GPR23: %08lx\n",
	       regs->gpr[20], regs->gpr[21], regs->gpr[22], regs->gpr[23]);
	FUNC1("GPR24: %08lx GPR25: %08lx GPR26: %08lx GPR27: %08lx\n",
	       regs->gpr[24], regs->gpr[25], regs->gpr[26], regs->gpr[27]);
	FUNC1("GPR28: %08lx GPR29: %08lx GPR30: %08lx GPR31: %08lx\n",
	       regs->gpr[28], regs->gpr[29], regs->gpr[30], regs->gpr[31]);
	FUNC1("  RES: %08lx oGPR11: %08lx\n",
	       regs->gpr[11], regs->orig_gpr11);

	FUNC1("Process %s (pid: %d, stackpage=%08lx)\n",
	       current->comm, current->pid, (unsigned long)current);
	/*
	 * When in-kernel, we also print out the stack and code at the
	 * time of the fault..
	 */
	if (in_kernel) {

		FUNC1("\nStack: ");
		FUNC2(NULL, (unsigned long *)esp);

		FUNC1("\nCode: ");
		if (regs->pc < PAGE_OFFSET)
			goto bad;

		for (i = -24; i < 24; i++) {
			unsigned char c;
			if (FUNC0(c, &((unsigned char *)regs->pc)[i])) {
bad:
				FUNC1(" Bad PC value.");
				break;
			}

			if (i == 0)
				FUNC1("(%02x) ", c);
			else
				FUNC1("%02x ", c);
		}
	}
	FUNC1("\n");
}