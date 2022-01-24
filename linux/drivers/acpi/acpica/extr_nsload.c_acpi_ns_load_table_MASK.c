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
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {TYPE_1__* tables; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_ALREADY_EXISTS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (size_t,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__ acpi_gbl_root_table_list ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 scalar_t__ FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_load_table ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC14(u32 table_index, struct acpi_namespace_node *node)
{
	acpi_status status;

	FUNC2(ns_load_table);

	/* If table already loaded into namespace, just return */

	if (FUNC10(table_index)) {
		status = AE_ALREADY_EXISTS;
		goto unlock;
	}

	FUNC0((ACPI_DB_INFO,
			  "**** Loading table into namespace ****\n"));

	status = FUNC9(table_index);
	if (FUNC1(status)) {
		goto unlock;
	}

	/*
	 * Parse the table and load the namespace with all named
	 * objects found within. Control methods are NOT parsed
	 * at this time. In fact, the control methods cannot be
	 * parsed until the entire namespace is loaded, because
	 * if a control method makes a forward reference (call)
	 * to another control method, we can't continue parsing
	 * because we don't know how many arguments to parse next!
	 */
	status = FUNC8(table_index, node);
	if (FUNC3(status)) {
		FUNC12(table_index, TRUE);
	} else {
		/*
		 * On error, delete any namespace objects created by this table.
		 * We cannot initialize these objects, so delete them. There are
		 * a couple of especially bad cases:
		 * AE_ALREADY_EXISTS - namespace collision.
		 * AE_NOT_FOUND - the target of a Scope operator does not
		 * exist. This target of Scope must already exist in the
		 * namespace, as per the ACPI specification.
		 */
		FUNC7(acpi_gbl_root_table_list.
						  tables[table_index].owner_id);

		FUNC11(table_index);
		FUNC13(status);
	}

unlock:
	if (FUNC1(status)) {
		FUNC13(status);
	}

	/*
	 * Now we can parse the control methods. We always parse
	 * them here for a sanity check, and if configured for
	 * just-in-time parsing, we delete the control method
	 * parse trees.
	 */
	FUNC0((ACPI_DB_INFO,
			  "**** Begin Table Object Initialization\n"));

	FUNC5();
	status = FUNC4(table_index, node);
	FUNC6();

	FUNC0((ACPI_DB_INFO,
			  "**** Completed Table Object Initialization\n"));

	FUNC13(status);
}