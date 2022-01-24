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
struct TYPE_2__ {scalar_t__* name; } ;
union acpi_predefined_info {TYPE_1__ info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,scalar_t__*) ; 
 union acpi_predefined_info* acpi_gbl_predefined_methods ; 
 union acpi_predefined_info* FUNC1 (union acpi_predefined_info const*) ; 

const union acpi_predefined_info *FUNC2(char *name)
{
	const union acpi_predefined_info *this_name;

	/* Quick check for a predefined name, first character must be underscore */

	if (name[0] != '_') {
		return (NULL);
	}

	/* Search info table for a predefined method/object name */

	this_name = acpi_gbl_predefined_methods;
	while (this_name->info.name[0]) {
		if (FUNC0(name, this_name->info.name)) {
			return (this_name);
		}

		this_name = FUNC1(this_name);
	}

	return (NULL);		/* Not found */
}