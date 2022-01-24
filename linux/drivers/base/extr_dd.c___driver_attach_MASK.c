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
struct device_driver {int name; } ;
struct device {TYPE_1__* p; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {struct device_driver* async_driver; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  __driver_attach_async_helper ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device_driver*,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int FUNC7 (struct device_driver*,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, void *data)
{
	struct device_driver *drv = data;
	int ret;

	/*
	 * Lock device and try to bind to it. We drop the error
	 * here and always return 0, because we need to keep trying
	 * to bind to devices and some drivers will return an error
	 * simply if it didn't support the device.
	 *
	 * driver_probe_device() will spit a warning if there
	 * is an error.
	 */

	ret = FUNC7(drv, dev);
	if (ret == 0) {
		/* no match */
		return 0;
	} else if (ret == -EPROBE_DEFER) {
		FUNC1(dev, "Device match requests probe deferral\n");
		FUNC6(dev);
	} else if (ret < 0) {
		FUNC1(dev, "Bus failed to match device: %d", ret);
		return ret;
	} /* ret > 0 means positive match */

	if (FUNC5(drv)) {
		/*
		 * Instead of probing the device synchronously we will
		 * probe it asynchronously to allow for more parallelism.
		 *
		 * We only take the device lock here in order to guarantee
		 * that the dev->driver and async_driver fields are protected
		 */
		FUNC1(dev, "probing driver %s asynchronously\n", drv->name);
		FUNC3(dev);
		if (!dev->driver) {
			FUNC8(dev);
			dev->p->async_driver = drv;
			FUNC0(__driver_attach_async_helper, dev);
		}
		FUNC4(dev);
		return 0;
	}

	FUNC2(drv, dev);

	return 0;
}