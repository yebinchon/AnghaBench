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
struct cpuidle_device {int /*<<< orphan*/  next_hrtimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 int FUNC2 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 scalar_t__ FUNC3 (struct cpuidle_driver*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct cpuidle_driver *drv, struct cpuidle_device *dev,
		  int index)
{
	int ret = 0;

	/*
	 * Store the next hrtimer, which becomes either next tick or the next
	 * timer event, whatever expires first. Additionally, to make this data
	 * useful for consumers outside cpuidle, we rely on that the governor's
	 * ->select() callback have decided, whether to stop the tick or not.
	 */
	FUNC0(dev->next_hrtimer, FUNC4());

	if (FUNC3(drv, index))
		ret = FUNC2(dev, drv, index);
	else
		ret = FUNC1(dev, drv, index);

	FUNC0(dev->next_hrtimer, 0);
	return ret;
}