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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ TWD_TIMER_CONTROL ; 
 scalar_t__ TWD_TIMER_COUNTER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 scalar_t__ twd_base ; 
 int twd_timer_rate ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long count;
	u64 waitjiffies;

	/*
	 * If this is the first time round, we need to work out how fast
	 * the timer ticks
	 */
	if (twd_timer_rate == 0) {
		FUNC2("Calibrating local timer... ");

		/* Wait for a tick to start */
		waitjiffies = FUNC0() + 1;

		while (FUNC0() < waitjiffies)
			FUNC4(10);

		/* OK, now the tick has started, let's get the timer going */
		waitjiffies += 5;

				 /* enable, no interrupt or reload */
		FUNC5(0x1, twd_base + TWD_TIMER_CONTROL);

				 /* maximum value */
		FUNC5(0xFFFFFFFFU, twd_base + TWD_TIMER_COUNTER);

		while (FUNC0() < waitjiffies)
			FUNC4(10);

		count = FUNC3(twd_base + TWD_TIMER_COUNTER);

		twd_timer_rate = (0xFFFFFFFFU - count) * (HZ / 5);

		FUNC1("%lu.%02luMHz.\n", twd_timer_rate / 1000000,
			(twd_timer_rate / 10000) % 100);
	}
}