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
union omap4_timeout {int /*<<< orphan*/  start; int /*<<< orphan*/  cycles; } ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ _early_timeout ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ timekeeping_suspended ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(union omap4_timeout *time, u32 timeout)
{
	/*
	 * There are two special cases where ktime_to_ns() can't be
	 * used to track the timeouts. First one is during early boot
	 * when the timers haven't been initialized yet. The second
	 * one is during suspend-resume cycle while timekeeping is
	 * being suspended / resumed. Clocksource for the system
	 * can be from a timer that requires pm_runtime access, which
	 * will eventually bring us here with timekeeping_suspended,
	 * during both suspend entry and resume paths. This happens
	 * at least on am43xx platform. Account for flakeyness
	 * with udelay() by multiplying the timeout value by 2.
	 */
	if (FUNC5(_early_timeout || timekeeping_suspended)) {
		if (time->cycles++ < timeout) {
			FUNC4(1 * 2);
			return false;
		}
	} else {
		if (!FUNC2(time->start)) {
			time->start = FUNC1();
			return false;
		}

		if (FUNC3(FUNC1(), time->start) < timeout) {
			FUNC0();
			return false;
		}
	}

	return true;
}