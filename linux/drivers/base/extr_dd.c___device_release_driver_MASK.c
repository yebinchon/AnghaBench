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
struct device_driver {int /*<<< orphan*/  (* remove ) (struct device*) ;int /*<<< orphan*/  dev_groups; } ;
struct device {int /*<<< orphan*/  kobj; TYPE_4__* bus; TYPE_2__* p; TYPE_1__* pm_domain; struct device_driver* driver; } ;
struct TYPE_8__ {TYPE_3__* p; int /*<<< orphan*/  (* remove ) (struct device*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  bus_notifier; } ;
struct TYPE_6__ {int /*<<< orphan*/  knode_driver; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* dismiss ) (struct device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_NOTIFY_UNBIND_DRIVER ; 
 int /*<<< orphan*/  BUS_NOTIFY_UNBOUND_DRIVER ; 
 int /*<<< orphan*/  KOBJ_UNBIND ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 

__attribute__((used)) static void FUNC22(struct device *dev, struct device *parent)
{
	struct device_driver *drv;

	drv = dev->driver;
	if (drv) {
		while (FUNC6(dev)) {
			FUNC1(dev, parent);

			FUNC8(dev);

			FUNC0(dev, parent);
			/*
			 * A concurrent invocation of the same function might
			 * have released the driver successfully while this one
			 * was waiting, so check for that.
			 */
			if (dev->driver != drv)
				return;
		}

		FUNC16(dev);
		FUNC15(dev);

		FUNC12(dev);

		if (dev->bus)
			FUNC3(&dev->bus->p->bus_notifier,
						     BUS_NOTIFY_UNBIND_DRIVER,
						     dev);

		FUNC17(dev);

		FUNC10(dev, drv->dev_groups);

		if (dev->bus && dev->bus->remove)
			dev->bus->remove(dev);
		else if (drv->remove)
			drv->remove(dev);

		FUNC7(dev);

		FUNC11(dev);
		FUNC2(dev);
		dev->driver = NULL;
		FUNC5(dev, NULL);
		if (dev->pm_domain && dev->pm_domain->dismiss)
			dev->pm_domain->dismiss(dev);
		FUNC18(dev);
		FUNC4(dev, 0);

		FUNC13(&dev->p->knode_driver);
		FUNC9(dev);
		if (dev->bus)
			FUNC3(&dev->bus->p->bus_notifier,
						     BUS_NOTIFY_UNBOUND_DRIVER,
						     dev);

		FUNC14(&dev->kobj, KOBJ_UNBIND);
	}
}