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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  __soft_restart ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * soft_restart_stack ; 

void FUNC6(unsigned long addr, bool disable_l2)
{
	u64 *stack = soft_restart_stack + FUNC0(soft_restart_stack);

	/* Disable interrupts first */
	FUNC5();
	FUNC3();

	/* Disable the L2 if we're the last man standing. */
	if (disable_l2)
		FUNC4();

	/* Change to the new stack and continue with the reset. */
	FUNC2(__soft_restart, (void *)addr, (void *)stack);

	/* Should never get here. */
	FUNC1();
}