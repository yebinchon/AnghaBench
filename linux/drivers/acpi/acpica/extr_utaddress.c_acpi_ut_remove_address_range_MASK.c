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
struct acpi_namespace_node {int dummy; } ;
struct acpi_address_range {struct acpi_address_range* next; int /*<<< orphan*/  end_address; int /*<<< orphan*/  start_address; struct acpi_namespace_node* region_node; } ;
typedef  size_t acpi_adr_space_type ;

/* Variables and functions */
 size_t ACPI_ADR_SPACE_SYSTEM_IO ; 
 size_t ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  ACPI_DB_NAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_address_range*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct acpi_address_range** acpi_gbl_address_range_list ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  ut_remove_address_range ; 

void
FUNC5(acpi_adr_space_type space_id,
			     struct acpi_namespace_node *region_node)
{
	struct acpi_address_range *range_info;
	struct acpi_address_range *prev;

	FUNC3(ut_remove_address_range);

	if ((space_id != ACPI_ADR_SPACE_SYSTEM_MEMORY) &&
	    (space_id != ACPI_ADR_SPACE_SYSTEM_IO)) {
		return_VOID;
	}

	/* Get the appropriate list head and check the list */

	range_info = prev = acpi_gbl_address_range_list[space_id];
	while (range_info) {
		if (range_info->region_node == region_node) {
			if (range_info == prev) {	/* Found at list head */
				acpi_gbl_address_range_list[space_id] =
				    range_info->next;
			} else {
				prev->next = range_info->next;
			}

			FUNC0((ACPI_DB_NAMES,
					  "\nRemoved [%4.4s] address range: 0x%8.8X%8.8X-0x%8.8X%8.8X\n",
					  FUNC4(range_info->
								region_node),
					  FUNC1(range_info->
							     start_address),
					  FUNC1(range_info->
							     end_address)));

			FUNC2(range_info);
			return_VOID;
		}

		prev = range_info;
		range_info = range_info->next;
	}

	return_VOID;
}