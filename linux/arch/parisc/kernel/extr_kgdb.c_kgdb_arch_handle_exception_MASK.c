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
struct pt_regs {int /*<<< orphan*/ * gr; int /*<<< orphan*/  iir; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARISC_KGDB_COMPILED_BREAK_INSN ; 
 int /*<<< orphan*/  PSW_R ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/ * kgdb_contthread ; 
 int /*<<< orphan*/  FUNC1 (char**,unsigned long*) ; 
 int kgdb_single_step ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 

int FUNC4(int trap, int signo,
		int err_code, char *inbuf, char *outbuf,
		struct pt_regs *regs)
{
	unsigned long addr;
	char *p = inbuf + 1;

	switch (inbuf[0]) {
	case 'D':
	case 'c':
	case 'k':
		kgdb_contthread = NULL;
		kgdb_single_step = 0;

		if (FUNC1(&p, &addr))
			FUNC0(regs, addr);
		else if (trap == 9 && regs->iir ==
				PARISC_KGDB_COMPILED_BREAK_INSN)
			FUNC3(regs);
		return 0;
	case 's':
		kgdb_single_step = 1;
		if (FUNC1(&p, &addr)) {
			FUNC0(regs, addr);
		} else if (trap == 9 && regs->iir ==
				PARISC_KGDB_COMPILED_BREAK_INSN) {
			FUNC3(regs);
			FUNC2(-1, 0);
		} else {
			FUNC2(0, 0);
		}
		regs->gr[0] |= PSW_R;
		return 0;

	}
	return -1;
}