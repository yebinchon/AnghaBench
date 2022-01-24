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
 scalar_t__ enabled_devices ; 
 scalar_t__ initialized ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
	if (enabled_devices) {
		initialized = 0;
		FUNC1();
	}

	/*
	 * Make sure external observers (such as the scheduler)
	 * are done looking at pointed idle states.
	 */
	FUNC0();
}