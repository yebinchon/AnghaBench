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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {unsigned int* uregs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int TYPE_FAULT ; 
 int TYPE_LDST ; 
 int ai_word ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 unsigned int FUNC9 () ; 
 scalar_t__ FUNC10 (struct pt_regs*) ; 

__attribute__((used)) static int
FUNC11(unsigned long addr, u32 instr, struct pt_regs *regs)
{
	unsigned int rd = FUNC3(instr);

	ai_word += 1;

	if ((!FUNC1(instr) && FUNC2(instr)) || FUNC10(regs))
		goto trans;

	if (FUNC0(instr)) {
		unsigned int val;
		FUNC4(val, addr);
		regs->uregs[rd] = val;
	} else
		FUNC6(regs->uregs[rd], addr);
	return TYPE_LDST;

 trans:
	if (FUNC0(instr)) {
		unsigned int val;
		unsigned int __ua_flags = FUNC9();
		FUNC5(val, addr);
		FUNC8(__ua_flags);
		regs->uregs[rd] = val;
	} else {
		unsigned int __ua_flags = FUNC9();
		FUNC7(regs->uregs[rd], addr);
		FUNC8(__ua_flags);
	}
	return TYPE_LDST;

 fault:
	return TYPE_FAULT;
}