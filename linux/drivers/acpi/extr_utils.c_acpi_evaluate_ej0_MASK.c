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
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

acpi_status FUNC3(acpi_handle handle)
{
	acpi_status status;

	status = FUNC1(handle, "_EJ0", 1);
	if (status == AE_NOT_FOUND)
		FUNC2(handle, "No _EJ0 support for device\n");
	else if (FUNC0(status))
		FUNC2(handle, "Eject failed (0x%x)\n", status);

	return status;
}