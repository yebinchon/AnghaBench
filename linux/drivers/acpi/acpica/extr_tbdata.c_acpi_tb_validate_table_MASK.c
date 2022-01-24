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
struct acpi_table_desc {int /*<<< orphan*/  pointer; int /*<<< orphan*/  flags; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_table_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_validate_table ; 

acpi_status FUNC3(struct acpi_table_desc *table_desc)
{
	acpi_status status = AE_OK;

	FUNC0(tb_validate_table);

	/* Validate the table if necessary */

	if (!table_desc->pointer) {
		status = FUNC1(table_desc, &table_desc->pointer,
					       &table_desc->length,
					       &table_desc->flags);
		if (!table_desc->pointer) {
			status = AE_NO_MEMORY;
		}
	}

	FUNC2(status);
}