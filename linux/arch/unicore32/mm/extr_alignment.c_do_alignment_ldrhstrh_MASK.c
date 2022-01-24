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
struct pt_regs {unsigned long* uregs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 size_t FUNC1 (unsigned long) ; 
 size_t FUNC2 (unsigned long) ; 
 int TYPE_FAULT ; 
 int TYPE_LDST ; 
 int TYPE_SWAP ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC7(unsigned long addr, unsigned long instr,
		      struct pt_regs *regs)
{
	unsigned int rd = FUNC1(instr);

	/* old value 0x40002120, can't judge swap instr correctly */
	if ((instr & 0x4b003fe0) == 0x40000120)
		goto swp;

	if (FUNC0(instr)) {
		unsigned long val;
		FUNC3(val, addr);

		/* signed half-word? */
		if (instr & 0x80)
			val = (signed long)((signed short)val);

		regs->uregs[rd] = val;
	} else
		FUNC5(regs->uregs[rd], addr);

	return TYPE_LDST;

swp:
	/* only handle swap word
	 * for swap byte should not active this alignment exception */
	FUNC4(regs->uregs[FUNC1(instr)], addr);
	FUNC6(regs->uregs[FUNC2(instr)], addr);
	return TYPE_SWAP;

fault:
	return TYPE_FAULT;
}