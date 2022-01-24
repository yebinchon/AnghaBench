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
struct acpi_ec {int /*<<< orphan*/  command_addr; int /*<<< orphan*/  data_addr; } ;
struct acpi_device {int /*<<< orphan*/ * driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_ec* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec*) ; 
 struct acpi_ec* boot_ec ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device)
{
	struct acpi_ec *ec;

	if (!device)
		return -EINVAL;

	ec = FUNC0(device);
	FUNC3(ec->data_addr, 1);
	FUNC3(ec->command_addr, 1);
	device->driver_data = NULL;
	if (ec != boot_ec) {
		FUNC2(ec);
		FUNC1(ec);
	}
	return 0;
}