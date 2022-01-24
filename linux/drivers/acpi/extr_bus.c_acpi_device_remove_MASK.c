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
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct acpi_device*) ;scalar_t__ notify; } ;
struct acpi_driver {TYPE_1__ ops; } ;
struct acpi_device {int /*<<< orphan*/ * driver_data; struct acpi_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 struct acpi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct acpi_device *acpi_dev = FUNC3(dev);
	struct acpi_driver *acpi_drv = acpi_dev->driver;

	if (acpi_drv) {
		if (acpi_drv->ops.notify)
			FUNC0(acpi_dev);
		if (acpi_drv->ops.remove)
			acpi_drv->ops.remove(acpi_dev);
	}
	acpi_dev->driver = NULL;
	acpi_dev->driver_data = NULL;

	FUNC1(dev);
	return 0;
}