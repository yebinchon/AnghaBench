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
struct platform_driver {scalar_t__ id_table; } ;
struct platform_device {scalar_t__ name; scalar_t__ driver_override; } ;
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*,struct device_driver*) ; 
 scalar_t__ FUNC1 (struct device*,struct device_driver*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,struct platform_device*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (struct device*) ; 
 struct platform_driver* FUNC5 (struct device_driver*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct device_driver *drv)
{
	struct platform_device *pdev = FUNC4(dev);
	struct platform_driver *pdrv = FUNC5(drv);

	/* When driver_override is set, only bind to the matching driver */
	if (pdev->driver_override)
		return !FUNC3(pdev->driver_override, drv->name);

	/* Attempt an OF style match first */
	if (FUNC1(dev, drv))
		return 1;

	/* Then try ACPI style match */
	if (FUNC0(dev, drv))
		return 1;

	/* Then try to match against the id table */
	if (pdrv->id_table)
		return FUNC2(pdrv->id_table, pdev) != NULL;

	/* fall-back to driver name match */
	return (FUNC3(pdev->name, drv->name) == 0);
}