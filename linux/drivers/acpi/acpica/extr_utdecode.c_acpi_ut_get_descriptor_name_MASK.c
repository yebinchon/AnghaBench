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

/* Variables and functions */
 size_t ACPI_DESC_TYPE_MAX ; 
 size_t FUNC0 (void*) ; 
 char const** acpi_gbl_desc_type_names ; 

const char *FUNC1(void *object)
{

	if (!object) {
		return ("NULL OBJECT");
	}

	if (FUNC0(object) > ACPI_DESC_TYPE_MAX) {
		return ("Not a Descriptor");
	}

	return (acpi_gbl_desc_type_names[FUNC0(object)]);
}