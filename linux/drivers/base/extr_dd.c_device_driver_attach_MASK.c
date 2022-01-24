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
struct device_driver {int dummy; } ;
struct device {int /*<<< orphan*/  parent; int /*<<< orphan*/  driver; TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  dead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_driver*,struct device*) ; 

int FUNC3(struct device_driver *drv, struct device *dev)
{
	int ret = 0;

	FUNC0(dev, dev->parent);

	/*
	 * If device has been removed or someone has already successfully
	 * bound a driver before us just skip the driver probe call.
	 */
	if (!dev->p->dead && !dev->driver)
		ret = FUNC2(drv, dev);

	FUNC1(dev, dev->parent);

	return ret;
}