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
struct acpi_hotplug_profile {int enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  acpi_scan_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct acpi_hotplug_profile *hotplug, bool val)
{
	if (!!hotplug->enabled == !!val)
		return;

	FUNC0(&acpi_scan_lock);

	hotplug->enabled = val;

	FUNC1(&acpi_scan_lock);
}