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
struct acpi_hotplug_context {int (* notify ) (struct acpi_device*,u32) ;void (* uevent ) (struct acpi_device*,u32) ;} ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,struct acpi_hotplug_context*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct acpi_device *adev,
				struct acpi_hotplug_context *hp,
				int (*notify)(struct acpi_device *, u32),
				void (*uevent)(struct acpi_device *, u32))
{
	FUNC0();
	hp->notify = notify;
	hp->uevent = uevent;
	FUNC1(adev, hp);
	FUNC2();
}