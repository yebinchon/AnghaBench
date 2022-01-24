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
struct device_driver {int dummy; } ;
struct device_attach_data {int have_async; int want_async; scalar_t__ check_async; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device_driver*,struct device*) ; 
 int FUNC4 (struct device_driver*,struct device*) ; 

__attribute__((used)) static int FUNC5(struct device_driver *drv, void *_data)
{
	struct device_attach_data *data = _data;
	struct device *dev = data->dev;
	bool async_allowed;
	int ret;

	ret = FUNC3(drv, dev);
	if (ret == 0) {
		/* no match */
		return 0;
	} else if (ret == -EPROBE_DEFER) {
		FUNC0(dev, "Device match requests probe deferral\n");
		FUNC2(dev);
	} else if (ret < 0) {
		FUNC0(dev, "Bus failed to match device: %d", ret);
		return ret;
	} /* ret > 0 means positive match */

	async_allowed = FUNC1(drv);

	if (async_allowed)
		data->have_async = true;

	if (data->check_async && async_allowed != data->want_async)
		return 0;

	return FUNC4(drv, dev);
}