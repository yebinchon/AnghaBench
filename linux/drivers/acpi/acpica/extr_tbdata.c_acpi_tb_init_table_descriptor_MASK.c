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
typedef  int /*<<< orphan*/  u8 ;
struct acpi_table_header {int /*<<< orphan*/  signature; int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int /*<<< orphan*/  ascii; } ;
struct acpi_table_desc {TYPE_1__ signature; int /*<<< orphan*/  flags; int /*<<< orphan*/  length; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  acpi_physical_address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_table_desc*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct acpi_table_desc *table_desc,
			      acpi_physical_address address,
			      u8 flags, struct acpi_table_header *table)
{

	/*
	 * Initialize the table descriptor. Set the pointer to NULL, since the
	 * table is not fully mapped at this time.
	 */
	FUNC1(table_desc, 0, sizeof(struct acpi_table_desc));
	table_desc->address = address;
	table_desc->length = table->length;
	table_desc->flags = flags;
	FUNC0(table_desc->signature.ascii, table->signature);
}