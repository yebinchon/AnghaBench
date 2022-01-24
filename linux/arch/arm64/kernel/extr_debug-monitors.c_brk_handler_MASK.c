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
 scalar_t__ DBG_HOOK_HANDLED ; 
 int EFAULT ; 
 int /*<<< orphan*/  TRAP_BRKPT ; 
 scalar_t__ FUNC0 (struct pt_regs*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC4(unsigned long unused, unsigned int esr,
		       struct pt_regs *regs)
{
	if (FUNC0(regs, esr) == DBG_HOOK_HANDLED)
		return 0;

	if (FUNC3(regs)) {
		FUNC2(TRAP_BRKPT);
	} else {
		FUNC1("Unexpected kernel BRK exception at EL1\n");
		return -EFAULT;
	}

	return 0;
}