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
struct device {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 scalar_t__ AE_SUPPORT ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device)
{
	acpi_handle handle = device->handle;
	struct device *errdev = NULL;
	acpi_status status;

	/*
	 * Carry out two passes here and ignore errors in the first pass,
	 * because if the devices in question are memory blocks and
	 * CONFIG_MEMCG is set, one of the blocks may hold data structures
	 * that the other blocks depend on, but it is not known in advance which
	 * block holds them.
	 *
	 * If the first pass is successful, the second one isn't needed, though.
	 */
	status = FUNC2(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
				     NULL, acpi_bus_offline, (void *)false,
				     (void **)&errdev);
	if (status == AE_SUPPORT) {
		FUNC3(errdev, "Offline disabled.\n");
		FUNC2(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
				    acpi_bus_online, NULL, NULL, NULL);
		return -EPERM;
	}
	FUNC0(handle, 0, (void *)false, (void **)&errdev);
	if (errdev) {
		errdev = NULL;
		FUNC2(ACPI_TYPE_ANY, handle, ACPI_UINT32_MAX,
				    NULL, acpi_bus_offline, (void *)true,
				    (void **)&errdev);
		if (!errdev)
			FUNC0(handle, 0, (void *)true,
					 (void **)&errdev);

		if (errdev) {
			FUNC3(errdev, "Offline failed.\n");
			FUNC1(handle, 0, NULL, NULL);
			FUNC2(ACPI_TYPE_ANY, handle,
					    ACPI_UINT32_MAX, acpi_bus_online,
					    NULL, NULL, NULL);
			return -EBUSY;
		}
	}
	return 0;
}