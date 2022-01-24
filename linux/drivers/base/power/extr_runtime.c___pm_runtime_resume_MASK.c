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
struct TYPE_2__ {scalar_t__ runtime_status; int /*<<< orphan*/  lock; int /*<<< orphan*/  usage_count; int /*<<< orphan*/  irq_safe; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 scalar_t__ RPM_ACTIVE ; 
 int RPM_ASYNC ; 
 int RPM_GET_PUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct device *dev, int rpmflags)
{
	unsigned long flags;
	int retval;

	FUNC1(!(rpmflags & RPM_ASYNC) && !dev->power.irq_safe &&
			dev->power.runtime_status != RPM_ACTIVE);

	if (rpmflags & RPM_GET_PUT)
		FUNC0(&dev->power.usage_count);

	FUNC3(&dev->power.lock, flags);
	retval = FUNC2(dev, rpmflags);
	FUNC4(&dev->power.lock, flags);

	return retval;
}