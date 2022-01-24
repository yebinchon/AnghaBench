#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_3__ {size_t type; } ;
struct TYPE_4__ {TYPE_1__ common_serial_bus; } ;
struct acpi_resource {size_t type; TYPE_2__ data; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_LV_RESOURCES ; 
 struct acpi_resource* FUNC2 (struct acpi_resource*) ; 
 size_t ACPI_RESOURCE_TYPE_END_TAG ; 
 size_t ACPI_RESOURCE_TYPE_MAX ; 
 size_t ACPI_RESOURCE_TYPE_SERIAL_BUS ; 
 int /*<<< orphan*/  _COMPONENT ; 
 int /*<<< orphan*/ * acpi_gbl_dump_resource_dispatch ; 
 int /*<<< orphan*/ * acpi_gbl_dump_serial_bus_dispatch ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(struct acpi_resource *resource_list)
{
	u32 count = 0;
	u32 type;

	FUNC0();

	/* Check if debug output enabled */

	if (!FUNC1(ACPI_LV_RESOURCES, _COMPONENT)) {
		return;
	}

	/* Walk list and dump all resource descriptors (END_TAG terminates) */

	do {
		FUNC3("\n[%02X] ", count);
		count++;

		/* Validate Type before dispatch */

		type = resource_list->type;
		if (type > ACPI_RESOURCE_TYPE_MAX) {
			FUNC3
			    ("Invalid descriptor type (%X) in resource list\n",
			     resource_list->type);
			return;
		}

		/* Sanity check the length. It must not be zero, or we loop forever */

		if (!resource_list->length) {
			FUNC3
			    ("Invalid zero length descriptor in resource list\n");
			return;
		}

		/* Dump the resource descriptor */

		if (type == ACPI_RESOURCE_TYPE_SERIAL_BUS) {
			FUNC4(&resource_list->data,
						acpi_gbl_dump_serial_bus_dispatch
						[resource_list->data.
						 common_serial_bus.type]);
		} else {
			FUNC4(&resource_list->data,
						acpi_gbl_dump_resource_dispatch
						[type]);
		}

		/* Point to the next resource structure */

		resource_list = FUNC2(resource_list);

		/* Exit when END_TAG descriptor is reached */

	} while (type != ACPI_RESOURCE_TYPE_END_TAG);
}