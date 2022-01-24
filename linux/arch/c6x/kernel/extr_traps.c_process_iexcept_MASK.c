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
struct pt_regs {scalar_t__ pc; } ;
struct exception_info {char* member_0; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 unsigned int BKPT_OPCODE ; 
 int /*<<< orphan*/  EXCEPT_TYPE_IXF ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  TRAP_BRKPT ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct exception_info*,struct pt_regs*) ; 
 unsigned int FUNC3 () ; 
 struct exception_info* iexcept_table ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(struct pt_regs *regs)
{
	unsigned int iexcept_report = FUNC3();
	unsigned int iexcept_num;

	FUNC1(EXCEPT_TYPE_IXF);

	FUNC4("IEXCEPT: PC[0x%lx]\n", regs->pc);

	while (iexcept_report) {
		iexcept_num = FUNC0(iexcept_report);
		iexcept_report &= ~(1 << iexcept_num);
		FUNC5(iexcept_report);
		if (*(unsigned int *)regs->pc == BKPT_OPCODE) {
			/* This is a breakpoint */
			struct exception_info bkpt_exception = {
				"Oops - undefined instruction",
				  SIGTRAP, TRAP_BRKPT
			};
			FUNC2(&bkpt_exception, regs);
			iexcept_report &= ~(0xFF);
			FUNC5(iexcept_report);
			continue;
		}

		FUNC2(&iexcept_table[iexcept_num], regs);
	}
	return 0;
}