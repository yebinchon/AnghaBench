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
struct cpuidle_governor {int dummy; } ;
struct cpuidle_driver {scalar_t__ governor; } ;

/* Variables and functions */
 int FUNC0 (struct cpuidle_driver*) ; 
 int /*<<< orphan*/ * cpuidle_curr_governor ; 
 int /*<<< orphan*/  cpuidle_driver_lock ; 
 struct cpuidle_governor* FUNC1 (scalar_t__) ; 
 struct cpuidle_driver* FUNC2 () ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 int /*<<< orphan*/ * cpuidle_prev_governor ; 
 scalar_t__ FUNC3 (struct cpuidle_governor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  param_governor ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct cpuidle_driver *drv)
{
	struct cpuidle_governor *gov;
	int ret;

	FUNC6(&cpuidle_driver_lock);
	ret = FUNC0(drv);
	FUNC7(&cpuidle_driver_lock);

	if (!ret && !FUNC8(param_governor) && drv->governor &&
	    (FUNC2() == drv)) {
		FUNC4(&cpuidle_lock);
		gov = FUNC1(drv->governor);
		if (gov) {
			cpuidle_prev_governor = cpuidle_curr_governor;
			if (FUNC3(gov) < 0)
				cpuidle_prev_governor = NULL;
		}
		FUNC5(&cpuidle_lock);
	}

	return ret;
}