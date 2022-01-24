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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 

void FUNC4(struct pt_regs *regs)
{
	FUNC0(!FUNC3(regs));

	/*
	 * Sanity check: we need to be on the normal thread stack.  This
	 * will catch asm bugs and any attempt to use ist_preempt_enable
	 * from double_fault.
	 */
	FUNC0(!FUNC1());

	FUNC2();
}