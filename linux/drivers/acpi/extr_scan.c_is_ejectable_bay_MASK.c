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
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct acpi_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC3(struct acpi_device *adev)
{
	acpi_handle handle = adev->handle;

	if (FUNC2(handle, "_EJ0") && FUNC1(adev))
		return true;

	return FUNC0(handle);
}