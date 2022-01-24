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
struct acpi_scan_handler {int /*<<< orphan*/  hotplug; } ;

/* Variables and functions */
 int FUNC0 (struct acpi_scan_handler*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

int FUNC2(struct acpi_scan_handler *handler,
				       const char *hotplug_profile_name)
{
	int error;

	error = FUNC0(handler);
	if (error)
		return error;

	FUNC1(&handler->hotplug, hotplug_profile_name);
	return 0;
}