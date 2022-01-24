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
struct device {struct device_driver* driver; } ;
struct bus_type {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 struct device* FUNC0 (struct bus_type*,int /*<<< orphan*/ *,char const*) ; 
 struct bus_type* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bus_type*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device_driver *drv, const char *buf,
			    size_t count)
{
	struct bus_type *bus = FUNC1(drv->bus);
	struct device *dev;
	int err = -ENODEV;

	dev = FUNC0(bus, NULL, buf);
	if (dev && dev->driver == drv) {
		FUNC3(dev);
		err = count;
	}
	FUNC4(dev);
	FUNC2(bus);
	return err;
}