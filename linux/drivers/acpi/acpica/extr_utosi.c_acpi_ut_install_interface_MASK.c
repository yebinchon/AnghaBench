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
struct acpi_interface_info {struct acpi_interface_info* next; int /*<<< orphan*/  flags; void* name; } ;
typedef  int /*<<< orphan*/  acpi_string ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_interface_info*) ; 
 int /*<<< orphan*/  ACPI_OSI_DYNAMIC ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 struct acpi_interface_info* acpi_gbl_supported_interfaces ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(acpi_string interface_name)
{
	struct acpi_interface_info *interface_info;

	/* Allocate info block and space for the name string */

	interface_info =
	    FUNC0(sizeof(struct acpi_interface_info));
	if (!interface_info) {
		return (AE_NO_MEMORY);
	}

	interface_info->name = FUNC0(FUNC3(interface_name) + 1);
	if (!interface_info->name) {
		FUNC1(interface_info);
		return (AE_NO_MEMORY);
	}

	/* Initialize new info and insert at the head of the global list */

	FUNC2(interface_info->name, interface_name);
	interface_info->flags = ACPI_OSI_DYNAMIC;
	interface_info->next = acpi_gbl_supported_interfaces;

	acpi_gbl_supported_interfaces = interface_info;
	return (AE_OK);
}