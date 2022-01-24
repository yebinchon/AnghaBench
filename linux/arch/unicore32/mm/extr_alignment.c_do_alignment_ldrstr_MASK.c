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
struct pt_regs {int /*<<< orphan*/ * uregs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned int FUNC3 (unsigned long) ; 
 int TYPE_FAULT ; 
 int TYPE_LDST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int
FUNC8(unsigned long addr, unsigned long instr,
		    struct pt_regs *regs)
{
	unsigned int rd = FUNC3(instr);

	if (!FUNC1(instr) && FUNC2(instr))
		goto trans;

	if (FUNC0(instr))
		FUNC4(regs->uregs[rd], addr);
	else
		FUNC6(regs->uregs[rd], addr);
	return TYPE_LDST;

trans:
	if (FUNC0(instr))
		FUNC5(regs->uregs[rd], addr);
	else
		FUNC7(regs->uregs[rd], addr);
	return TYPE_LDST;

fault:
	return TYPE_FAULT;
}