#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {union acpi_parse_object* arg; } ;
struct TYPE_6__ {int /*<<< orphan*/  aml_opcode; TYPE_1__ value; struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  length; int /*<<< orphan*/  address; } ;
struct TYPE_7__ {int /*<<< orphan*/  pointer; } ;
union acpi_operand_object {TYPE_4__ region; TYPE_3__ string; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {union acpi_operand_object** operands; } ;
struct acpi_table_header {int /*<<< orphan*/  length; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  ACPI_WALK_OPERANDS ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NOT_EXIST ; 
 scalar_t__ AE_NOT_FOUND ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 scalar_t__ FUNC6 (struct acpi_walk_state*,union acpi_parse_object*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 union acpi_operand_object* FUNC9 (struct acpi_namespace_node*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_eval_table_region_operands ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

acpi_status
FUNC13(struct acpi_walk_state *walk_state,
				   union acpi_parse_object *op)
{
	acpi_status status;
	union acpi_operand_object *obj_desc;
	union acpi_operand_object **operand;
	struct acpi_namespace_node *node;
	union acpi_parse_object *next_op;
	struct acpi_table_header *table;
	u32 table_index;

	FUNC4(ds_eval_table_region_operands, op);

	/*
	 * This is where we evaluate the Signature string, oem_id string,
	 * and oem_table_id string of the Data Table Region declaration
	 */
	node = op->common.node;

	/* next_op points to Signature string op */

	next_op = op->common.value.arg;

	/*
	 * Evaluate/create the Signature string, oem_id string,
	 * and oem_table_id string operands
	 */
	status = FUNC6(walk_state, next_op);
	if (FUNC2(status)) {
		FUNC12(status);
	}

	operand = &walk_state->operands[0];

	/*
	 * Resolve the Signature string, oem_id string,
	 * and oem_table_id string operands
	 */
	status =
	    FUNC7(op->common.aml_opcode, ACPI_WALK_OPERANDS,
				     walk_state);
	if (FUNC2(status)) {
		goto cleanup;
	}

	/* Find the ACPI table */

	status = FUNC10(operand[0]->string.pointer,
				    operand[1]->string.pointer,
				    operand[2]->string.pointer, &table_index);
	if (FUNC2(status)) {
		if (status == AE_NOT_FOUND) {
			FUNC1((AE_INFO,
				    "ACPI Table [%4.4s] OEM:(%s, %s) not found in RSDT/XSDT",
				    operand[0]->string.pointer,
				    operand[1]->string.pointer,
				    operand[2]->string.pointer));
		}
		goto cleanup;
	}

	status = FUNC8(table_index, &table);
	if (FUNC2(status)) {
		goto cleanup;
	}

	obj_desc = FUNC9(node);
	if (!obj_desc) {
		status = AE_NOT_EXIST;
		goto cleanup;
	}

	obj_desc->region.address = FUNC5(table);
	obj_desc->region.length = table->length;

	FUNC0((ACPI_DB_EXEC, "RgnObj %p Addr %8.8X%8.8X Len %X\n",
			  obj_desc,
			  FUNC3(obj_desc->region.address),
			  obj_desc->region.length));

	/* Now the address and length are valid for this opregion */

	obj_desc->region.flags |= AOPOBJ_DATA_VALID;

cleanup:
	FUNC11(operand[0]);
	FUNC11(operand[1]);
	FUNC11(operand[2]);

	FUNC12(status);
}