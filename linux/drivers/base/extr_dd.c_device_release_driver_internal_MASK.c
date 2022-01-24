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
struct device {struct device_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct device*) ; 

void FUNC3(struct device *dev,
				    struct device_driver *drv,
				    struct device *parent)
{
	FUNC0(dev, parent);

	if (!drv || drv == dev->driver)
		FUNC2(dev, parent);

	FUNC1(dev, parent);
}