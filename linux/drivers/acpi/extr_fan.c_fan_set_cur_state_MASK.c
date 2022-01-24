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
struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct acpi_fan {scalar_t__ acpi4; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_fan* FUNC0 (struct acpi_device*) ; 
 int FUNC1 (struct acpi_device*,unsigned long) ; 
 int FUNC2 (struct acpi_device*,unsigned long) ; 

__attribute__((used)) static int
FUNC3(struct thermal_cooling_device *cdev, unsigned long state)
{
	struct acpi_device *device = cdev->devdata;
	struct acpi_fan *fan = FUNC0(device);

	if (fan->acpi4)
		return FUNC2(device, state);
	else
		return FUNC1(device, state);
}