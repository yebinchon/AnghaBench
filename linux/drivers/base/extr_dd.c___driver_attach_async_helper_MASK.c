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
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int /*<<< orphan*/  parent; int /*<<< orphan*/  driver; TYPE_1__* p; } ;
typedef  int /*<<< orphan*/  async_cookie_t ;
struct TYPE_2__ {int /*<<< orphan*/  dead; struct device_driver* async_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct device_driver*,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(void *_dev, async_cookie_t cookie)
{
	struct device *dev = _dev;
	struct device_driver *drv;
	int ret = 0;

	FUNC0(dev, dev->parent);

	drv = dev->p->async_driver;

	/*
	 * If device has been removed or someone has already successfully
	 * bound a driver before us just skip the driver probe call.
	 */
	if (!dev->p->dead && !dev->driver)
		ret = FUNC3(drv, dev);

	FUNC1(dev, dev->parent);

	FUNC2(dev, "driver %s async attach completed: %d\n", drv->name, ret);

	FUNC4(dev);
}