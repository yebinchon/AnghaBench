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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(char * __unused)
{
	FUNC2();

	/* Destroy all of the TLBs in preparation for reset by MMU */
	FUNC0();

	/* Address error with SR.BL=1 first. */
	FUNC3();

#ifdef CONFIG_SUPERH32
	/* If that fails or is unsupported, go for the watchdog next. */
	watchdog_trigger_immediate();
#endif

	/*
	 * Give up and sleep.
	 */
	while (1)
		FUNC1();
}