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
struct TYPE_2__ {int /*<<< orphan*/  enumeration_by_parent; } ;
struct acpi_device {TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_RECONFIG_DEVICE_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  acpi_reconfig_chain ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct acpi_device*) ; 

__attribute__((used)) static void FUNC3(struct acpi_device *device)
{
	/*
	 * Do not enumerate devices with enumeration_by_parent flag set as
	 * they will be enumerated by their respective parents.
	 */
	if (!device->flags.enumeration_by_parent) {
		FUNC0(device, NULL);
		FUNC1(device);
	} else {
		FUNC2(&acpi_reconfig_chain,
					     ACPI_RECONFIG_DEVICE_ADD, device);
	}
}