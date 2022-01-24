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
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct amba_driver {int /*<<< orphan*/  id_table; } ;
struct amba_device {scalar_t__ driver_override; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct amba_device* FUNC2 (struct device*) ; 
 struct amba_driver* FUNC3 (struct device_driver*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device_driver *drv)
{
	struct amba_device *pcdev = FUNC2(dev);
	struct amba_driver *pcdrv = FUNC3(drv);

	/* When driver_override is set, only bind to the matching driver */
	if (pcdev->driver_override)
		return !FUNC1(pcdev->driver_override, drv->name);

	return FUNC0(pcdrv->id_table, pcdev) != NULL;
}