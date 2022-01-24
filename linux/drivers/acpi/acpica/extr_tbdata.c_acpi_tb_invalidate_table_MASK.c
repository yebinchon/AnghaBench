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
struct acpi_table_desc {int /*<<< orphan*/ * pointer; int /*<<< orphan*/  flags; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  tb_invalidate_table ; 

void FUNC2(struct acpi_table_desc *table_desc)
{

	FUNC0(tb_invalidate_table);

	/* Table must be validated */

	if (!table_desc->pointer) {
		return_VOID;
	}

	FUNC1(table_desc->pointer, table_desc->length,
			      table_desc->flags);
	table_desc->pointer = NULL;

	return_VOID;
}