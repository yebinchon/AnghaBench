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
struct TYPE_2__ {int can_wakeup; int /*<<< orphan*/  entry; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

void FUNC5(struct device *dev, bool capable)
{
	if (!!dev->power.can_wakeup == !!capable)
		return;

	dev->power.can_wakeup = capable;
	if (FUNC1(dev) && !FUNC2(&dev->power.entry)) {
		if (capable) {
			int ret = FUNC3(dev);

			if (ret)
				FUNC0(dev, "Wakeup sysfs attributes not added\n");
		} else {
			FUNC4(dev);
		}
	}
}