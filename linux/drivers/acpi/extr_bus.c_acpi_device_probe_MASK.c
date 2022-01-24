#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_3__ {int (* add ) (struct acpi_device*) ;int /*<<< orphan*/  (* remove ) (struct acpi_device*) ;scalar_t__ notify; } ;
struct acpi_driver {int /*<<< orphan*/  name; TYPE_1__ ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_id; } ;
struct acpi_device {TYPE_2__ pnp; int /*<<< orphan*/ * driver_data; struct acpi_driver* driver; scalar_t__ handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOSYS ; 
 int FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*) ; 
 struct acpi_device* FUNC6 (struct device*) ; 
 struct acpi_driver* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct acpi_device *acpi_dev = FUNC6(dev);
	struct acpi_driver *acpi_drv = FUNC7(dev->driver);
	int ret;

	if (acpi_dev->handler && !FUNC2(acpi_dev))
		return -EINVAL;

	if (!acpi_drv->ops.add)
		return -ENOSYS;

	ret = acpi_drv->ops.add(acpi_dev);
	if (ret)
		return ret;

	acpi_dev->driver = acpi_drv;
	FUNC0((ACPI_DB_INFO,
			  "Driver [%s] successfully bound to device [%s]\n",
			  acpi_drv->name, acpi_dev->pnp.bus_id));

	if (acpi_drv->ops.notify) {
		ret = FUNC1(acpi_dev);
		if (ret) {
			if (acpi_drv->ops.remove)
				acpi_drv->ops.remove(acpi_dev);

			acpi_dev->driver = NULL;
			acpi_dev->driver_data = NULL;
			return ret;
		}
	}

	FUNC0((ACPI_DB_INFO, "Found driver [%s] for device [%s]\n",
			  acpi_drv->name, acpi_dev->pnp.bus_id));
	FUNC3(dev);
	return 0;
}