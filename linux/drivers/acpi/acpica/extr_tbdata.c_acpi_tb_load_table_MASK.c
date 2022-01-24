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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_table_header {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_owner_id ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TABLE_EVENT_LOAD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_load_table ; 

acpi_status
FUNC9(u32 table_index, struct acpi_namespace_node *parent_node)
{
	struct acpi_table_header *table;
	acpi_status status;
	acpi_owner_id owner_id;

	FUNC1(tb_load_table);

	/*
	 * Note: Now table is "INSTALLED", it must be validated before
	 * using.
	 */
	status = FUNC4(table_index, &table);
	if (FUNC0(status)) {
		FUNC8(status);
	}

	status = FUNC5(table_index, parent_node);

	/*
	 * Update GPEs for any new _Lxx/_Exx methods. Ignore errors. The host is
	 * responsible for discovering any new wake GPEs by running _PRW methods
	 * that may have been loaded by this table.
	 */
	status = FUNC6(table_index, &owner_id);
	if (FUNC2(status)) {
		FUNC3(owner_id);
	}

	/* Invoke table handler */

	FUNC7(ACPI_TABLE_EVENT_LOAD, table);
	FUNC8(status);
}