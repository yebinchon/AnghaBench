#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {scalar_t__ cpu; } ;
struct TYPE_2__ {int (* cpu1_powerdown ) () ;int (* cpu0_enter_aftr ) () ;int /*<<< orphan*/  (* post_enter_aftr ) () ;int /*<<< orphan*/  (* pre_enter_aftr ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpuidle_device*,int /*<<< orphan*/ *) ; 
 TYPE_1__* exynos_cpuidle_pdata ; 
 int /*<<< orphan*/  exynos_idle_barrier ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct cpuidle_device *dev,
					 struct cpuidle_driver *drv,
					 int index)
{
	int ret;

	exynos_cpuidle_pdata->pre_enter_aftr();

	/*
	 * Waiting all cpus to reach this point at the same moment
	 */
	FUNC0(dev, &exynos_idle_barrier);

	/*
	 * Both cpus will reach this point at the same time
	 */
	ret = dev->cpu ? exynos_cpuidle_pdata->cpu1_powerdown()
		       : exynos_cpuidle_pdata->cpu0_enter_aftr();
	if (ret)
		index = ret;

	/*
	 * Waiting all cpus to finish the power sequence before going further
	 */
	FUNC0(dev, &exynos_idle_barrier);

	exynos_cpuidle_pdata->post_enter_aftr();

	return index;
}