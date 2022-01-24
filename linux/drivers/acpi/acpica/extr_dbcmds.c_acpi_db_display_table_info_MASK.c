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
struct TYPE_3__ {int /*<<< orphan*/  ascii; } ;
struct acpi_table_desc {int flags; TYPE_1__ signature; scalar_t__ pointer; int /*<<< orphan*/  address; int /*<<< orphan*/  owner_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {size_t current_table_count; struct acpi_table_desc* tables; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ACPI_TABLE_IS_LOADED ; 
#define  ACPI_TABLE_ORIGIN_EXTERNAL_VIRTUAL 130 
#define  ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL 129 
#define  ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL 128 
 int ACPI_TABLE_ORIGIN_MASK ; 
 TYPE_2__ acpi_gbl_root_table_list ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_desc*) ; 

void FUNC5(char *table_arg)
{
	u32 i;
	struct acpi_table_desc *table_desc;
	acpi_status status;

	/* Header */

	FUNC2("Idx ID  Status Type                    "
		       "TableHeader (Sig, Address, Length, Misc)\n");

	/* Walk the entire root table list */

	for (i = 0; i < acpi_gbl_root_table_list.current_table_count; i++) {
		table_desc = &acpi_gbl_root_table_list.tables[i];

		/* Index and Table ID */

		FUNC2("%3u %.2u ", i, table_desc->owner_id);

		/* Decode the table flags */

		if (!(table_desc->flags & ACPI_TABLE_IS_LOADED)) {
			FUNC2("NotLoaded ");
		} else {
			FUNC2(" Loaded ");
		}

		switch (table_desc->flags & ACPI_TABLE_ORIGIN_MASK) {
		case ACPI_TABLE_ORIGIN_EXTERNAL_VIRTUAL:

			FUNC2("External/virtual ");
			break;

		case ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL:

			FUNC2("Internal/physical ");
			break;

		case ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL:

			FUNC2("Internal/virtual ");
			break;

		default:

			FUNC2("INVALID TYPE    ");
			break;
		}

		/* Make sure that the table is mapped */

		status = FUNC4(table_desc);
		if (FUNC0(status)) {
			return;
		}

		/* Dump the table header */

		if (table_desc->pointer) {
			FUNC3(table_desc->address,
						   table_desc->pointer);
		} else {
			/* If the pointer is null, the table has been unloaded */

			FUNC1(("%4.4s - Table has been unloaded",
				   table_desc->signature.ascii));
		}
	}
}