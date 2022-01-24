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
struct pt_regs {int nip; int msr; } ;

/* Variables and functions */
 int MSR_IR ; 
 int NR_INSN_TO_PRINT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (void const*,int) ; 

__attribute__((used)) static void FUNC5(struct pt_regs *regs)
{
	int i;
	unsigned long pc = regs->nip - (NR_INSN_TO_PRINT * 3 / 4 * sizeof(int));

	FUNC3("Instruction dump:");

	for (i = 0; i < NR_INSN_TO_PRINT; i++) {
		int instr;

		if (!(i % 8))
			FUNC2("\n");

#if !defined(CONFIG_BOOKE)
		/* If executing with the IMMU off, adjust pc rather
		 * than print XXXXXXXX.
		 */
		if (!(regs->msr & MSR_IR))
			pc = (unsigned long)FUNC1(pc);
#endif

		if (!FUNC0(pc) ||
		    FUNC4((const void *)pc, instr)) {
			FUNC2("XXXXXXXX ");
		} else {
			if (regs->nip == pc)
				FUNC2("<%08x> ", instr);
			else
				FUNC2("%08x ", instr);
		}

		pc += sizeof(int);
	}

	FUNC2("\n");
}