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
struct acpi_device {int dummy; } ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AE_NULL_ENTRY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct acpi_device* acpi_root ; 

__attribute__((used)) static struct acpi_device *FUNC3(acpi_handle handle)
{
	struct acpi_device *device = NULL;
	acpi_status status;

	/*
	 * Fixed hardware devices do not appear in the namespace and do not
	 * have handles, but we fabricate acpi_devices for them, so we have
	 * to deal with them specially.
	 */
	if (!handle)
		return acpi_root;

	do {
		status = FUNC2(handle, &handle);
		if (FUNC0(status))
			return status == AE_NULL_ENTRY ? NULL : acpi_root;
	} while (FUNC1(handle, &device));
	return device;
}