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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int UPROBE_SS_ARM_INSN ; 
 int UPROBE_SWBP_ARM_INSN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC4(struct pt_regs *regs, unsigned int instr)
{
	unsigned long flags;

	FUNC1(flags);
	instr &= 0x0fffffff;
	if (instr == (UPROBE_SWBP_ARM_INSN & 0x0fffffff))
		FUNC3(regs);
	else if (instr == (UPROBE_SS_ARM_INSN & 0x0fffffff))
		FUNC2(regs);
	FUNC0(flags);

	return 0;
}