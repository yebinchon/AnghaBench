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
struct cpuidle_driver {int /*<<< orphan*/  cpumask; scalar_t__ bctimer; int /*<<< orphan*/  state_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct cpuidle_driver*) ; 
 int FUNC1 (struct cpuidle_driver*) ; 
 int FUNC2 (struct cpuidle_driver*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  cpuidle_setup_broadcast_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int FUNC5(struct cpuidle_driver *drv)
{
	int ret;

	if (!drv || !drv->state_count)
		return -EINVAL;

	ret = FUNC2(drv);
	if (ret)
		return ret;

	if (FUNC3())
		return -ENODEV;

	FUNC0(drv);

	ret = FUNC1(drv);
	if (ret)
		return ret;

	if (drv->bctimer)
		FUNC4(drv->cpumask, cpuidle_setup_broadcast_timer,
				 (void *)1, 1);

	return 0;
}