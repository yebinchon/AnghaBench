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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct acpi_address_range {scalar_t__ end_address; scalar_t__ start_address; struct acpi_address_range* next; int /*<<< orphan*/  region_node; } ;
typedef  scalar_t__ acpi_physical_address ;
typedef  size_t acpi_adr_space_type ;

/* Variables and functions */
 size_t ACPI_ADR_SPACE_SYSTEM_IO ; 
 size_t ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 struct acpi_address_range** acpi_gbl_address_range_list ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  ut_check_address_range ; 

u32
FUNC7(acpi_adr_space_type space_id,
			    acpi_physical_address address, u32 length, u8 warn)
{
	struct acpi_address_range *range_info;
	acpi_physical_address end_address;
	char *pathname;
	u32 overlap_count = 0;

	FUNC2(ut_check_address_range);

	if ((space_id != ACPI_ADR_SPACE_SYSTEM_MEMORY) &&
	    (space_id != ACPI_ADR_SPACE_SYSTEM_IO)) {
		FUNC6(0);
	}

	range_info = acpi_gbl_address_range_list[space_id];
	end_address = address + length - 1;

	/* Check entire list for all possible conflicts */

	while (range_info) {
		/*
		 * Check if the requested address/length overlaps this
		 * address range. There are four cases to consider:
		 *
		 * 1) Input address/length is contained completely in the
		 *    address range
		 * 2) Input address/length overlaps range at the range start
		 * 3) Input address/length overlaps range at the range end
		 * 4) Input address/length completely encompasses the range
		 */
		if ((address <= range_info->end_address) &&
		    (end_address >= range_info->start_address)) {

			/* Found an address range overlap */

			overlap_count++;
			if (warn) {	/* Optional warning message */
				pathname =
				    FUNC4(range_info->
								    region_node,
								    TRUE);

				FUNC3((AE_INFO,
					      "%s range 0x%8.8X%8.8X-0x%8.8X%8.8X conflicts with OpRegion 0x%8.8X%8.8X-0x%8.8X%8.8X (%s)",
					      FUNC5(space_id),
					      FUNC0(address),
					      FUNC0(end_address),
					      FUNC0(range_info->
								 start_address),
					      FUNC0(range_info->
								 end_address),
					      pathname));
				FUNC1(pathname);
			}
		}

		range_info = range_info->next;
	}

	FUNC6(overlap_count);
}