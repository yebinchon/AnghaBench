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
 int FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 (char const*,struct pt_regs*,long) ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 
 unsigned long FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,struct pt_regs*,long) ; 

void FUNC5(const char *str, struct pt_regs *regs, long err)
{
	unsigned long flags;

	/*
	 * system_reset_excption handles debugger, crash dump, panic, for 0x100
	 */
	if (FUNC0(regs) != 0x100) {
		if (FUNC2(regs))
			return;
	}

	flags = FUNC3(regs);
	if (FUNC1(str, regs, err))
		err = 0;
	FUNC4(flags, regs, err);
}