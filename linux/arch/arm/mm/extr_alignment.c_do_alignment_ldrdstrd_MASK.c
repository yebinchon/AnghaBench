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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int TYPE_ERROR ; 
 int TYPE_FAULT ; 
 int TYPE_LDST ; 
 int ai_dword ; 
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
	unsigned int rd2;
	int load;

	if ((instr & 0xfe000000) == 0xe8000000) {
		/* ARMv7 Thumb-2 32-bit LDRD/STRD */
		rd2 = (instr >> 8) & 0xf;
		load = !!(FUNC0(instr));
	} else if (((rd & 1) == 1) || (rd == 14))
		goto bad;
	else {
		load = ((instr & 0xf0) == 0xd0);
		rd2 = rd + 1;
	}

	ai_dword += 1;

	if (FUNC8(regs))
		goto user;

	if (load) {
		unsigned long val;
		FUNC2(val, addr);
		regs->uregs[rd] = val;
		FUNC2(val, addr + 4);
		regs->uregs[rd2] = val;
	} else {
		FUNC4(regs->uregs[rd], addr);
		FUNC4(regs->uregs[rd2], addr + 4);
	}

	return TYPE_LDST;

 user:
	if (load) {
		unsigned long val, val2;
		unsigned int __ua_flags = FUNC7();

		FUNC3(val, addr);
		FUNC3(val2, addr + 4);

		FUNC6(__ua_flags);

		regs->uregs[rd] = val;
		regs->uregs[rd2] = val2;
	} else {
		unsigned int __ua_flags = FUNC7();
		FUNC5(regs->uregs[rd], addr);
		FUNC5(regs->uregs[rd2], addr + 4);
		FUNC6(__ua_flags);
	}

	return TYPE_LDST;
 bad:
	return TYPE_ERROR;
 fault:
	return TYPE_FAULT;
}