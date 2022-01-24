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
struct sa1111_driver {int devid; } ;
struct sa1111_dev {int devid; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sa1111_driver* FUNC0 (struct device_driver*) ; 
 struct sa1111_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *_dev, struct device_driver *_drv)
{
	struct sa1111_dev *dev = FUNC1(_dev);
	struct sa1111_driver *drv = FUNC0(_drv);

	return !!(dev->devid & drv->devid);
}