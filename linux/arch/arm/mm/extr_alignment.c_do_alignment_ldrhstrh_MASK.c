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
typedef  int u32 ;
struct pt_regs {unsigned long* uregs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int TYPE_FAULT ; 
 int TYPE_LDST ; 
 int ai_half ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 unsigned int FUNC7 () ; 
 scalar_t__ FUNC8 (struct pt_regs*) ; 

__attribute__((used)) static int
FUNC9(unsigned long addr, u32 instr, struct pt_regs *regs)
{
	unsigned int rd = FUNC1(instr);

	ai_half += 1;

	if (FUNC8(regs))
		goto user;

	if (FUNC0(instr)) {
		unsigned long val;
		FUNC2(val, addr);

		/* signed half-word? */
		if (instr & 0x40)
			val = (signed long)((signed short) val);

		regs->uregs[rd] = val;
	} else
		FUNC4(regs->uregs[rd], addr);

	return TYPE_LDST;

 user:
	if (FUNC0(instr)) {
		unsigned long val;
		unsigned int __ua_flags = FUNC7();

		FUNC3(val, addr);
		FUNC6(__ua_flags);

		/* signed half-word? */
		if (instr & 0x40)
			val = (signed long)((signed short) val);

		regs->uregs[rd] = val;
	} else {
		unsigned int __ua_flags = FUNC7();
		FUNC5(regs->uregs[rd], addr);
		FUNC6(__ua_flags);
	}

	return TYPE_LDST;

 fault:
	return TYPE_FAULT;
}