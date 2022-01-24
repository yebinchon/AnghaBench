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
struct device_driver {int /*<<< orphan*/  bus; } ;
struct device {int /*<<< orphan*/ * driver; } ;
struct bus_type {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 struct device* FUNC0 (struct bus_type*,int /*<<< orphan*/ *,char const*) ; 
 struct bus_type* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bus_type*) ; 
 int FUNC3 (struct device_driver*,struct device*) ; 
 scalar_t__ FUNC4 (struct device_driver*,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device_driver *drv, const char *buf,
			  size_t count)
{
	struct bus_type *bus = FUNC1(drv->bus);
	struct device *dev;
	int err = -ENODEV;

	dev = FUNC0(bus, NULL, buf);
	if (dev && dev->driver == NULL && FUNC4(drv, dev)) {
		err = FUNC3(drv, dev);

		if (err > 0) {
			/* success */
			err = count;
		} else if (err == 0) {
			/* driver didn't accept device */
			err = -ENODEV;
		}
	}
	FUNC5(dev);
	FUNC2(bus);
	return err;
}