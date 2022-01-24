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

/* Variables and functions */
 scalar_t__ ARM_CPU_PART_CORTEX_A15 ; 
 int /*<<< orphan*/  all ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	if (FUNC2() == ARM_CPU_PART_CORTEX_A15) {
		/*
		 * On the Cortex-A15 we need to disable
		 * L2 prefetching before flushing the cache.
		 */
		asm volatile(
		"mcr	p15, 1, %0, c15, c0, 3\n"
		"isb\n"
		"dsb"
		: : "r" (0x400));
	}

	/* Flush all cache levels for this cluster. */
	FUNC3(all);

	/*
	 * Disable cluster-level coherency by masking
	 * incoming snoops and DVM messages:
	 */
	FUNC0(FUNC1());
}