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
struct acpi_table_desc {int flags; scalar_t__ address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL ; 
 int ACPI_TABLE_ORIGIN_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_desc*) ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  tb_uninstall_table ; 

void FUNC5(struct acpi_table_desc *table_desc)
{

	FUNC1(tb_uninstall_table);

	/* Table must be installed */

	if (!table_desc->address) {
		return_VOID;
	}

	FUNC4(table_desc);

	if ((table_desc->flags & ACPI_TABLE_ORIGIN_MASK) ==
	    ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL) {
		FUNC0(FUNC2(table_desc->address));
	}

	table_desc->address = FUNC3(NULL);
	return_VOID;
}