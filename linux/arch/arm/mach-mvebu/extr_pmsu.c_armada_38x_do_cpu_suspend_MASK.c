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
 unsigned long PMSU_PREPARE_DEEP_IDLE ; 
 int /*<<< orphan*/  SCU_PM_POWEROFF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  louis ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(unsigned long deepidle)
{
	unsigned long flags = 0;

	if (deepidle)
		flags |= PMSU_PREPARE_DEEP_IDLE;

	FUNC2(flags);
	/*
	 * Already flushed cache, but do it again as the outer cache
	 * functions dirty the cache with spinlocks
	 */
	FUNC4(louis);

	FUNC3(FUNC1(), SCU_PM_POWEROFF);

	FUNC0();

	return 1;
}