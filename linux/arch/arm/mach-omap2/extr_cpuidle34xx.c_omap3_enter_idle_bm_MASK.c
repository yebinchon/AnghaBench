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
typedef  scalar_t__ u8 ;
struct omap3_idle_statedata {scalar_t__ per_min_state; } ;
struct cpuidle_driver {int safe_state_index; } ;
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ PWRDM_POWER_ON ; 
 int /*<<< orphan*/  cam_pd ; 
 int FUNC0 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 int FUNC1 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 struct omap3_idle_statedata* omap3_idle_data ; 
 int /*<<< orphan*/  per_pd ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct cpuidle_device *dev,
			       struct cpuidle_driver *drv,
			       int index)
{
	int new_state_idx, ret;
	u8 per_next_state, per_saved_state;
	struct omap3_idle_statedata *cx;

	/*
	 * Use only C1 if CAM is active.
	 * CAM does not have wakeup capability in OMAP3.
	 */
	if (FUNC3(cam_pd) == PWRDM_POWER_ON)
		new_state_idx = drv->safe_state_index;
	else
		new_state_idx = FUNC0(dev, drv, index);

	/*
	 * FIXME: we currently manage device-specific idle states
	 *        for PER and CORE in combination with CPU-specific
	 *        idle states.  This is wrong, and device-specific
	 *        idle management needs to be separated out into
	 *        its own code.
	 */

	/* Program PER state */
	cx = &omap3_idle_data[new_state_idx];

	per_next_state = FUNC2(per_pd);
	per_saved_state = per_next_state;
	if (per_next_state < cx->per_min_state) {
		per_next_state = cx->per_min_state;
		FUNC4(per_pd, per_next_state);
	}

	ret = FUNC1(dev, drv, new_state_idx);

	/* Restore original PER state if it was modified */
	if (per_next_state != per_saved_state)
		FUNC4(per_pd, per_saved_state);

	return ret;
}