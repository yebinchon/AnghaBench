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
typedef  unsigned long const cycles_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_TIMER_EVT_STREAM_PERIOD_US ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long const FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(unsigned long cycles)
{
	cycles_t start = FUNC3();

	if (FUNC1()) {
		const cycles_t timer_evt_period =
			FUNC0(ARCH_TIMER_EVT_STREAM_PERIOD_US);

		while ((FUNC3() - start + timer_evt_period) < cycles)
			FUNC4();
	}

	while ((FUNC3() - start) < cycles)
		FUNC2();
}