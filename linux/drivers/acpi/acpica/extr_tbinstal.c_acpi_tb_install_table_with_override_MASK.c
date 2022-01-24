#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct acpi_table_desc {TYPE_1__* pointer; int /*<<< orphan*/  address; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_5__ {int /*<<< orphan*/ * tables; } ;
struct TYPE_4__ {int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t acpi_gbl_dsdt_index ; 
 TYPE_3__ acpi_gbl_root_table_list ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_table_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct acpi_table_desc *new_table_desc,
				    u8 override, u32 *table_index)
{
	u32 i;
	acpi_status status;

	status = FUNC1(&i, NULL);
	if (FUNC0(status)) {
		return;
	}

	/*
	 * ACPI Table Override:
	 *
	 * Before we install the table, let the host OS override it with a new
	 * one if desired. Any table within the RSDT/XSDT can be replaced,
	 * including the DSDT which is pointed to by the FADT.
	 */
	if (override) {
		FUNC3(new_table_desc);
	}

	FUNC2(&acpi_gbl_root_table_list.tables[i],
				      new_table_desc->address,
				      new_table_desc->flags,
				      new_table_desc->pointer);

	FUNC4(new_table_desc->address,
				   new_table_desc->pointer);

	/* This synchronizes acpi_gbl_dsdt_index */

	*table_index = i;

	/* Set the global integer width (based upon revision of the DSDT) */

	if (i == acpi_gbl_dsdt_index) {
		FUNC5(new_table_desc->pointer->revision);
	}
}