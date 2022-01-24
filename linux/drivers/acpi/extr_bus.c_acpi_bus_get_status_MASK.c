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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  bus_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  present; scalar_t__ functional; } ;
struct acpi_device {TYPE_2__ pnp; TYPE_1__ status; int /*<<< orphan*/  handle; scalar_t__ dep_unmet; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long long ACPI_STA_DEFAULT ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long long*) ; 
 scalar_t__ FUNC3 (struct acpi_device*) ; 
 scalar_t__ FUNC4 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*,unsigned long long) ; 

int FUNC6(struct acpi_device *device)
{
	acpi_status status;
	unsigned long long sta;

	if (FUNC3(device)) {
		FUNC5(device, ACPI_STA_DEFAULT);
		return 0;
	}

	/* Battery devices must have their deps met before calling _STA */
	if (FUNC4(device) && device->dep_unmet) {
		FUNC5(device, 0);
		return 0;
	}

	status = FUNC2(device->handle, &sta);
	if (FUNC1(status))
		return -ENODEV;

	FUNC5(device, sta);

	if (device->status.functional && !device->status.present) {
		FUNC0((ACPI_DB_INFO, "Device [%s] status [%08x]: "
		       "functional but not present;\n",
			device->pnp.bus_id, (u32)sta));
	}

	FUNC0((ACPI_DB_INFO, "Device [%s] status [%08x]\n",
			  device->pnp.bus_id, (u32)sta));
	return 0;
}