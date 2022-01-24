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
struct cpuidle_driver {int safe_state_index; } ;
struct cpuidle_device {scalar_t__ cpu; } ;

/* Variables and functions */
 int FUNC0 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct cpuidle_device *dev,
				struct cpuidle_driver *drv,
				int index)
{
	int new_index = index;

	/* AFTR can only be entered when cores other than CPU0 are offline */
	if (FUNC2() > 1 || dev->cpu != 0)
		new_index = drv->safe_state_index;

	if (new_index == 0)
		return FUNC0(dev, drv, new_index);

	FUNC1();

	return new_index;
}