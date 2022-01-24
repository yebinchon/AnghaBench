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
struct pt_regs {char** uregs; int /*<<< orphan*/  gp; int /*<<< orphan*/  fp; int /*<<< orphan*/  sp; scalar_t__ lp; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERNEL_DS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct pt_regs *regs)
{
	FUNC5("PC is at %pS\n", (void *)FUNC1(regs));
	FUNC5("LP is at %pS\n", (void *)regs->lp);
	FUNC3("pc : [<%08lx>]    lp : [<%08lx>]    %s\n"
		"sp : %08lx  fp : %08lx  gp : %08lx\n",
		FUNC1(regs),
		regs->lp, FUNC4(), regs->sp, regs->fp, regs->gp);
	FUNC3("r25: %08lx  r24: %08lx\n", regs->uregs[25], regs->uregs[24]);

	FUNC3("r23: %08lx  r22: %08lx  r21: %08lx  r20: %08lx\n",
		regs->uregs[23], regs->uregs[22],
		regs->uregs[21], regs->uregs[20]);
	FUNC3("r19: %08lx  r18: %08lx  r17: %08lx  r16: %08lx\n",
		regs->uregs[19], regs->uregs[18],
		regs->uregs[17], regs->uregs[16]);
	FUNC3("r15: %08lx  r14: %08lx  r13: %08lx  r12: %08lx\n",
		regs->uregs[15], regs->uregs[14],
		regs->uregs[13], regs->uregs[12]);
	FUNC3("r11: %08lx  r10: %08lx  r9 : %08lx  r8 : %08lx\n",
		regs->uregs[11], regs->uregs[10],
		regs->uregs[9], regs->uregs[8]);
	FUNC3("r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\n",
		regs->uregs[7], regs->uregs[6], regs->uregs[5], regs->uregs[4]);
	FUNC3("r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\n",
		regs->uregs[3], regs->uregs[2], regs->uregs[1], regs->uregs[0]);
	FUNC3("  IRQs o%s  Segment %s\n",
		FUNC2(regs) ? "n" : "ff",
		FUNC6(FUNC0(), KERNEL_DS)? "kernel" : "user");
}