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
struct cpuidle_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpuidle_driver*) ; 
 int /*<<< orphan*/  cpuidle_driver_lock ; 
 struct cpuidle_driver* FUNC1 () ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 int /*<<< orphan*/ * cpuidle_prev_governor ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct cpuidle_driver *drv)
{
	bool enabled = (FUNC1() == drv);

	FUNC5(&cpuidle_driver_lock);
	FUNC0(drv);
	FUNC6(&cpuidle_driver_lock);

	if (!enabled)
		return;

	FUNC3(&cpuidle_lock);
	if (cpuidle_prev_governor) {
		if (!FUNC2(cpuidle_prev_governor))
			cpuidle_prev_governor = NULL;
	}
	FUNC4(&cpuidle_lock);
}