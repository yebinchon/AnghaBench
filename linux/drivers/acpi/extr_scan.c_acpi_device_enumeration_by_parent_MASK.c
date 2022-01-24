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
struct list_head {int dummy; } ;
struct acpi_device_id {char* member_0; } ;
struct acpi_device {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  acpi_check_serial_bus_slave ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*,struct list_head*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*,struct acpi_device_id const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ x86_apple_machine ; 

__attribute__((used)) static bool FUNC6(struct acpi_device *device)
{
	struct list_head resource_list;
	bool is_serial_bus_slave = false;
	/*
	 * These devices have multiple I2cSerialBus resources and an i2c-client
	 * must be instantiated for each, each with its own i2c_device_id.
	 * Normally we only instantiate an i2c-client for the first resource,
	 * using the ACPI HID as id. These special cases are handled by the
	 * drivers/platform/x86/i2c-multi-instantiate.c driver, which knows
	 * which i2c_device_id to use for each resource.
	 */
	static const struct acpi_device_id i2c_multi_instantiate_ids[] = {
		{"BSG1160", },
		{"BSG2150", },
		{"INT33FE", },
		{"INT3515", },
		{}
	};

	if (FUNC3(device))
		return true;

	/* Macs use device properties in lieu of _CRS resources */
	if (x86_apple_machine &&
	    (FUNC5(&device->fwnode, "spiSclkPeriod") ||
	     FUNC5(&device->fwnode, "i2cAddress") ||
	     FUNC5(&device->fwnode, "baud")))
		return true;

	/* Instantiate a pdev for the i2c-multi-instantiate drv to bind to */
	if (!FUNC4(device, i2c_multi_instantiate_ids))
		return false;

	FUNC0(&resource_list);
	FUNC2(device, &resource_list,
			       acpi_check_serial_bus_slave,
			       &is_serial_bus_slave);
	FUNC1(&resource_list);

	return is_serial_bus_slave;
}