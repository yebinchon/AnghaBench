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
struct TYPE_2__ {unsigned long* gregs; unsigned long version; } ;
struct ucontext {TYPE_1__ uc_mcontext; } ;
struct switch_stack {int /*<<< orphan*/  gp; int /*<<< orphan*/  fp; int /*<<< orphan*/  r23; int /*<<< orphan*/  r22; int /*<<< orphan*/  r21; int /*<<< orphan*/  r20; int /*<<< orphan*/  r19; int /*<<< orphan*/  r18; int /*<<< orphan*/  r17; int /*<<< orphan*/  r16; } ;
struct pt_regs {int /*<<< orphan*/  sp; int /*<<< orphan*/  ea; int /*<<< orphan*/  ra; int /*<<< orphan*/  r15; int /*<<< orphan*/  r14; int /*<<< orphan*/  r13; int /*<<< orphan*/  r12; int /*<<< orphan*/  r11; int /*<<< orphan*/  r10; int /*<<< orphan*/  r9; int /*<<< orphan*/  r8; int /*<<< orphan*/  r7; int /*<<< orphan*/  r6; int /*<<< orphan*/  r5; int /*<<< orphan*/  r4; int /*<<< orphan*/  r3; int /*<<< orphan*/  r2; int /*<<< orphan*/  r1; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCONTEXT_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static inline int FUNC1(struct ucontext *uc, struct pt_regs *regs)
{
	struct switch_stack *sw = (struct switch_stack *)regs - 1;
	unsigned long *gregs = uc->uc_mcontext.gregs;
	int err = 0;

	err |= FUNC0(MCONTEXT_VERSION, &uc->uc_mcontext.version);
	err |= FUNC0(regs->r1, &gregs[0]);
	err |= FUNC0(regs->r2, &gregs[1]);
	err |= FUNC0(regs->r3, &gregs[2]);
	err |= FUNC0(regs->r4, &gregs[3]);
	err |= FUNC0(regs->r5, &gregs[4]);
	err |= FUNC0(regs->r6, &gregs[5]);
	err |= FUNC0(regs->r7, &gregs[6]);
	err |= FUNC0(regs->r8, &gregs[7]);
	err |= FUNC0(regs->r9, &gregs[8]);
	err |= FUNC0(regs->r10, &gregs[9]);
	err |= FUNC0(regs->r11, &gregs[10]);
	err |= FUNC0(regs->r12, &gregs[11]);
	err |= FUNC0(regs->r13, &gregs[12]);
	err |= FUNC0(regs->r14, &gregs[13]);
	err |= FUNC0(regs->r15, &gregs[14]);
	err |= FUNC0(sw->r16, &gregs[15]);
	err |= FUNC0(sw->r17, &gregs[16]);
	err |= FUNC0(sw->r18, &gregs[17]);
	err |= FUNC0(sw->r19, &gregs[18]);
	err |= FUNC0(sw->r20, &gregs[19]);
	err |= FUNC0(sw->r21, &gregs[20]);
	err |= FUNC0(sw->r22, &gregs[21]);
	err |= FUNC0(sw->r23, &gregs[22]);
	err |= FUNC0(regs->ra, &gregs[23]);
	err |= FUNC0(sw->fp, &gregs[24]);
	err |= FUNC0(sw->gp, &gregs[25]);
	err |= FUNC0(regs->ea, &gregs[27]);
	err |= FUNC0(regs->sp, &gregs[28]);
	return err;
}