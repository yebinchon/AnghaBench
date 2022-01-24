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
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 

__attribute__((used)) static void
FUNC4(struct pt_regs *regs, unsigned long error_code,
		       unsigned long address, int si_code)
{
	/* User mode accesses just cause a SIGSEGV */
	if (FUNC3(regs)) {
		/*
		 * It's possible to have interrupts off here:
		 */
		FUNC1();

		FUNC0(SIGSEGV, si_code, address);

		return;
	}

	FUNC2(regs, error_code, address);
}