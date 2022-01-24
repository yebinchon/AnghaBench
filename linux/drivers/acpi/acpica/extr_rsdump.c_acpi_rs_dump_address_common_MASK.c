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
struct TYPE_2__ {int resource_type; } ;
union acpi_resource_data {TYPE_1__ address; } ;
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
#define  ACPI_BUS_NUMBER_RANGE 130 
 int /*<<< orphan*/  FUNC0 () ; 
#define  ACPI_IO_RANGE 129 
#define  ACPI_MEMORY_RANGE 128 
 int /*<<< orphan*/  FUNC1 (union acpi_resource_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_rs_dump_general_flags ; 
 int /*<<< orphan*/  acpi_rs_dump_io_flags ; 
 int /*<<< orphan*/  acpi_rs_dump_memory_flags ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(union acpi_resource_data *resource)
{
	FUNC0();

	/* Decode the type-specific flags */

	switch (resource->address.resource_type) {
	case ACPI_MEMORY_RANGE:

		FUNC1(resource, acpi_rs_dump_memory_flags);
		break;

	case ACPI_IO_RANGE:

		FUNC1(resource, acpi_rs_dump_io_flags);
		break;

	case ACPI_BUS_NUMBER_RANGE:

		FUNC3("Resource Type", "Bus Number Range");
		break;

	default:

		FUNC2("Resource Type",
				     (u8) resource->address.resource_type);
		break;
	}

	/* Decode the general flags */

	FUNC1(resource, acpi_rs_dump_general_flags);
}