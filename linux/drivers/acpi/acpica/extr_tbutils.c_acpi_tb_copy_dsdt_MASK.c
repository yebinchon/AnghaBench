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
typedef  size_t u32 ;
struct acpi_table_header {int /*<<< orphan*/  length; } ;
struct acpi_table_desc {int /*<<< orphan*/  length; int /*<<< orphan*/  pointer; } ;
struct TYPE_2__ {struct acpi_table_desc* tables; } ;

/* Variables and functions */
 struct acpi_table_header* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL ; 
 int /*<<< orphan*/  AE_INFO ; 
 size_t acpi_gbl_dsdt_index ; 
 TYPE_1__ acpi_gbl_root_table_list ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_table_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_table_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct acpi_table_header *FUNC7(u32 table_index)
{
	struct acpi_table_header *new_table;
	struct acpi_table_desc *table_desc;

	table_desc = &acpi_gbl_root_table_list.tables[table_index];

	new_table = FUNC0(table_desc->length);
	if (!new_table) {
		FUNC1((AE_INFO, "Could not copy DSDT of length 0x%X",
			    table_desc->length));
		return (NULL);
	}

	FUNC6(new_table, table_desc->pointer, table_desc->length);
	FUNC5(table_desc);

	FUNC4(&acpi_gbl_root_table_list.
				      tables[acpi_gbl_dsdt_index],
				      FUNC3(new_table),
				      ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL,
				      new_table);

	FUNC2(("Forced DSDT copy: length 0x%05X copied locally, original unmapped", new_table->length));

	return (new_table);
}