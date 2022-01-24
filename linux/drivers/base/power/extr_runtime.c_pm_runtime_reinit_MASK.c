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
struct TYPE_2__ {scalar_t__ runtime_status; int /*<<< orphan*/  lock; scalar_t__ irq_safe; } ;
struct device {scalar_t__ parent; TYPE_1__ power; } ;

/* Variables and functions */
 scalar_t__ RPM_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct device *dev)
{
	if (!FUNC0(dev)) {
		if (dev->power.runtime_status == RPM_ACTIVE)
			FUNC2(dev);
		if (dev->power.irq_safe) {
			FUNC3(&dev->power.lock);
			dev->power.irq_safe = 0;
			FUNC4(&dev->power.lock);
			if (dev->parent)
				FUNC1(dev->parent);
		}
	}
}