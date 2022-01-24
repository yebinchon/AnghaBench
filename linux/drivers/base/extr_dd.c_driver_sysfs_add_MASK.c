#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  kobj; TYPE_4__* driver; TYPE_2__* bus; } ;
struct TYPE_8__ {TYPE_3__* p; int /*<<< orphan*/  coredump; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {TYPE_1__* p; } ;
struct TYPE_5__ {int /*<<< orphan*/  bus_notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_NOTIFY_BIND_DRIVER ; 
 int /*<<< orphan*/  CONFIG_DEV_COREDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  dev_attr_coredump ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	int ret;

	if (dev->bus)
		FUNC1(&dev->bus->p->bus_notifier,
					     BUS_NOTIFY_BIND_DRIVER, dev);

	ret = FUNC4(&dev->driver->p->kobj, &dev->kobj,
				FUNC3(&dev->kobj));
	if (ret)
		goto fail;

	ret = FUNC4(&dev->kobj, &dev->driver->p->kobj,
				"driver");
	if (ret)
		goto rm_dev;

	if (!FUNC0(CONFIG_DEV_COREDUMP) || !dev->driver->coredump ||
	    !FUNC2(dev, &dev_attr_coredump))
		return 0;

	FUNC5(&dev->kobj, "driver");

rm_dev:
	FUNC5(&dev->driver->p->kobj,
			  FUNC3(&dev->kobj));

fail:
	return ret;
}