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
struct cpuidle_driver {int state_count; TYPE_1__* states; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {int (* enter_dead ) (struct cpuidle_device*,int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 struct cpuidle_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuidle_devices ; 
 struct cpuidle_driver* FUNC1 (struct cpuidle_device*) ; 
 int FUNC2 (struct cpuidle_device*,int) ; 

int FUNC3(void)
{
	struct cpuidle_device *dev = FUNC0(cpuidle_devices);
	struct cpuidle_driver *drv = FUNC1(dev);
	int i;

	if (!drv)
		return -ENODEV;

	/* Find lowest-power state that supports long-term idle */
	for (i = drv->state_count - 1; i >= 0; i--)
		if (drv->states[i].enter_dead)
			return drv->states[i].enter_dead(dev, i);

	return -ENODEV;
}