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
struct pt_regs {int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXCEPT_TYPE_EXC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pt_regs*) ; 
 int /*<<< orphan*/ * eexcept_table ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct pt_regs *regs)
{
	int evt;

	FUNC2("EEXCEPT: PC[0x%lx]\n", regs->pc);

	while ((evt = FUNC3()) >= 0)
		FUNC1(&eexcept_table[evt], regs);

	FUNC0(EXCEPT_TYPE_EXC);
}