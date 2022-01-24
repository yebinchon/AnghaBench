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
struct acpi_interface_info {int flags; struct acpi_interface_info* name; struct acpi_interface_info* next; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_interface_info*) ; 
 int ACPI_OSI_DEFAULT_INVALID ; 
 int ACPI_OSI_DYNAMIC ; 
 int ACPI_OSI_INVALID ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_gbl_osi_mutex ; 
 struct acpi_interface_info* acpi_gbl_supported_interfaces ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(void)
{
	acpi_status status;
	struct acpi_interface_info *next_interface;

	status = FUNC2(acpi_gbl_osi_mutex, ACPI_WAIT_FOREVER);
	if (FUNC0(status)) {
		return (status);
	}

	next_interface = acpi_gbl_supported_interfaces;
	while (next_interface) {
		acpi_gbl_supported_interfaces = next_interface->next;

		if (next_interface->flags & ACPI_OSI_DYNAMIC) {

			/* Only interfaces added at runtime can be freed */

			FUNC1(next_interface->name);
			FUNC1(next_interface);
		} else {
			/* Interface is in static list. Reset it to invalid or valid. */

			if (next_interface->flags & ACPI_OSI_DEFAULT_INVALID) {
				next_interface->flags |= ACPI_OSI_INVALID;
			} else {
				next_interface->flags &= ~ACPI_OSI_INVALID;
			}
		}

		next_interface = acpi_gbl_supported_interfaces;
	}

	FUNC3(acpi_gbl_osi_mutex);
	return (AE_OK);
}