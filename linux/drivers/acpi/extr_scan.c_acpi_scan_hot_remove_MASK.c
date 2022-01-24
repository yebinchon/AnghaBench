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
struct acpi_device {int /*<<< orphan*/  dev; TYPE_1__* handler; int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_4__ {scalar_t__ demand_offline; } ;
struct TYPE_3__ {TYPE_2__ hotplug; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 unsigned long long ACPI_STA_DEVICE_ENABLED ; 
 scalar_t__ AE_NOT_FOUND ; 
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_device*,int) ; 
 int FUNC8 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct acpi_device *device)
{
	acpi_handle handle = device->handle;
	unsigned long long sta;
	acpi_status status;

	if (device->handler && device->handler->hotplug.demand_offline) {
		if (!FUNC7(device, true))
			return -EBUSY;
	} else {
		int error = FUNC8(device);
		if (error)
			return error;
	}

	FUNC0((ACPI_DB_INFO,
		"Hot-removing device %s...\n", FUNC9(&device->dev)));

	FUNC2(device);

	FUNC5(handle, 0);
	/*
	 * TBD: _EJD support.
	 */
	status = FUNC3(handle);
	if (status == AE_NOT_FOUND)
		return -ENODEV;
	else if (FUNC1(status))
		return -EIO;

	/*
	 * Verify if eject was indeed successful.  If not, log an error
	 * message.  No need to call _OST since _EJ0 call was made OK.
	 */
	status = FUNC4(handle, "_STA", NULL, &sta);
	if (FUNC1(status)) {
		FUNC6(handle,
			"Status check after eject failed (0x%x)\n", status);
	} else if (sta & ACPI_STA_DEVICE_ENABLED) {
		FUNC6(handle,
			"Eject incomplete - status 0x%llx\n", sta);
	}

	return 0;
}