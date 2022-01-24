#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct omap3_idle_statedata {int flags; scalar_t__ mpu_state; scalar_t__ core_state; } ;
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pwrdm_clkdms; } ;

/* Variables and functions */
 int OMAP_CPUIDLE_CX_NO_CLKDM_IDLE ; 
 scalar_t__ PWRDM_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* core_pd ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* mpu_pd ; 
 scalar_t__ FUNC4 () ; 
 struct omap3_idle_statedata* omap3_idle_data ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct cpuidle_device *dev,
			    struct cpuidle_driver *drv,
			    int index)
{
	struct omap3_idle_statedata *cx = &omap3_idle_data[index];

	if (FUNC5() || FUNC4())
		goto return_sleep_time;

	/* Deny idle for C1 */
	if (cx->flags & OMAP_CPUIDLE_CX_NO_CLKDM_IDLE) {
		FUNC1(mpu_pd->pwrdm_clkdms[0]);
	} else {
		FUNC8(mpu_pd, cx->mpu_state);
		FUNC8(core_pd, cx->core_state);
	}

	/*
	 * Call idle CPU PM enter notifier chain so that
	 * VFP context is saved.
	 */
	if (cx->mpu_state == PWRDM_POWER_OFF)
		FUNC2();

	/* Execute ARM wfi */
	FUNC6();

	/*
	 * Call idle CPU PM enter notifier chain to restore
	 * VFP context.
	 */
	if (cx->mpu_state == PWRDM_POWER_OFF &&
	    FUNC7(mpu_pd) == PWRDM_POWER_OFF)
		FUNC3();

	/* Re-allow idle for C1 */
	if (cx->flags & OMAP_CPUIDLE_CX_NO_CLKDM_IDLE)
		FUNC0(mpu_pd->pwrdm_clkdms[0]);

return_sleep_time:

	return index;
}