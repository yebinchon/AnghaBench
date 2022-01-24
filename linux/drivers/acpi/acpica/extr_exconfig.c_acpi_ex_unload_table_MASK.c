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
struct TYPE_4__ {scalar_t__ type; int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ reference; } ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (union acpi_operand_object*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_unload_table ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

acpi_status FUNC9(union acpi_operand_object *ddb_handle)
{
	acpi_status status = AE_OK;
	union acpi_operand_object *table_desc = ddb_handle;
	u32 table_index;

	FUNC1(ex_unload_table);

	/*
	 * Temporarily emit a warning so that the ASL for the machine can be
	 * hopefully obtained. This is to say that the Unload() operator is
	 * extremely rare if not completely unused.
	 */
	FUNC4((AE_INFO, "Received request to unload an ACPI table"));

	/*
	 * May 2018: Unload is no longer supported for the following reasons:
	 * 1) A correct implementation on some hosts may not be possible.
	 * 2) Other ACPI implementations do not correctly/fully support it.
	 * 3) It requires host device driver support which does not exist.
	 *    (To properly support namespace unload out from underneath.)
	 * 4) This AML operator has never been seen in the field.
	 */
	FUNC0((AE_INFO, AE_NOT_IMPLEMENTED,
			"AML Unload operator is not supported"));

	/*
	 * Validate the handle
	 * Although the handle is partially validated in acpi_ex_reconfiguration()
	 * when it calls acpi_ex_resolve_operands(), the handle is more completely
	 * validated here.
	 *
	 * Handle must be a valid operand object of type reference. Also, the
	 * ddb_handle must still be marked valid (table has not been previously
	 * unloaded)
	 */
	if ((!ddb_handle) ||
	    (FUNC2(ddb_handle) != ACPI_DESC_TYPE_OPERAND) ||
	    (ddb_handle->common.type != ACPI_TYPE_LOCAL_REFERENCE) ||
	    (!(ddb_handle->common.flags & AOPOBJ_DATA_VALID))) {
		FUNC8(AE_AML_OPERAND_TYPE);
	}

	/* Get the table index from the ddb_handle */

	table_index = table_desc->reference.value;

	/*
	 * Release the interpreter lock so that the table lock won't have
	 * strict order requirement against it.
	 */
	FUNC6();
	status = FUNC7(table_index);
	FUNC5();

	/*
	 * Invalidate the handle. We do this because the handle may be stored
	 * in a named object and may not be actually deleted until much later.
	 */
	if (FUNC3(status)) {
		ddb_handle->common.flags &= ~AOPOBJ_DATA_VALID;
	}
	FUNC8(status);
}