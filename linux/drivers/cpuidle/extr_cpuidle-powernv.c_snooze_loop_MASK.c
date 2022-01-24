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
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TIF_POLLING_NRFLAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  snooze_timeout_en ; 

__attribute__((used)) static int FUNC13(struct cpuidle_device *dev,
			struct cpuidle_driver *drv,
			int index)
{
	u64 snooze_exit_time;

	FUNC11(TIF_POLLING_NRFLAG);

	FUNC7();

	snooze_exit_time = FUNC4() + FUNC3(dev, drv, index);
	FUNC9();
	FUNC1();
	while (!FUNC8()) {
		if (FUNC5(snooze_timeout_en) && FUNC4() > snooze_exit_time) {
			/*
			 * Task has not woken up but we are exiting the polling
			 * loop anyway. Require a barrier after polling is
			 * cleared to order subsequent test of need_resched().
			 */
			FUNC2(TIF_POLLING_NRFLAG);
			FUNC12();
			break;
		}
	}

	FUNC0();
	FUNC10();
	FUNC2(TIF_POLLING_NRFLAG);

	FUNC6();

	return index;
}