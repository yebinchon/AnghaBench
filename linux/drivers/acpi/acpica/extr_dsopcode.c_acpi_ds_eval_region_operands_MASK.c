#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ integer; union acpi_parse_object* arg; } ;
struct TYPE_7__ {int /*<<< orphan*/  aml_opcode; union acpi_parse_object* next; TYPE_1__ value; struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct TYPE_10__ {int /*<<< orphan*/  flags; scalar_t__ length; scalar_t__ address; int /*<<< orphan*/  space_id; } ;
struct TYPE_9__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_5__ region; TYPE_4__ integer; } ;
typedef  scalar_t__ u32 ;
struct acpi_walk_state {int num_operands; union acpi_operand_object** operands; } ;
struct TYPE_8__ {int /*<<< orphan*/  ascii; } ;
struct acpi_namespace_node {TYPE_3__ name; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_physical_address ;
typedef  scalar_t__ acpi_adr_space_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union acpi_parse_object*) ; 
 scalar_t__ ACPI_NUM_PREDEFINED_REGIONS ; 
 int /*<<< orphan*/  ACPI_WALK_OPERANDS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_walk_state*,union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 union acpi_operand_object* FUNC7 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_eval_region_operands ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC11(struct acpi_walk_state *walk_state,
			     union acpi_parse_object *op)
{
	acpi_status status;
	union acpi_operand_object *obj_desc;
	union acpi_operand_object *operand_desc;
	struct acpi_namespace_node *node;
	union acpi_parse_object *next_op;
	acpi_adr_space_type space_id;

	FUNC3(ds_eval_region_operands, op);

	/*
	 * This is where we evaluate the address and length fields of the
	 * op_region declaration
	 */
	node = op->common.node;

	/* next_op points to the op that holds the space_ID */

	next_op = op->common.value.arg;
	space_id = (acpi_adr_space_type)next_op->common.value.integer;

	/* next_op points to address op */

	next_op = next_op->common.next;

	/* Evaluate/create the address and length operands */

	status = FUNC5(walk_state, next_op);
	if (FUNC1(status)) {
		FUNC10(status);
	}

	/* Resolve the length and address operands to numbers */

	status =
	    FUNC6(op->common.aml_opcode, ACPI_WALK_OPERANDS,
				     walk_state);
	if (FUNC1(status)) {
		FUNC10(status);
	}

	obj_desc = FUNC7(node);
	if (!obj_desc) {
		FUNC10(AE_NOT_EXIST);
	}

	/*
	 * Get the length operand and save it
	 * (at Top of stack)
	 */
	operand_desc = walk_state->operands[walk_state->num_operands - 1];

	obj_desc->region.length = (u32) operand_desc->integer.value;
	FUNC9(operand_desc);

	/* A zero-length operation region is unusable. Just warn */

	if (!obj_desc->region.length
	    && (space_id < ACPI_NUM_PREDEFINED_REGIONS)) {
		FUNC4((AE_INFO,
			      "Operation Region [%4.4s] has zero length (SpaceId %X)",
			      node->name.ascii, space_id));
	}

	/*
	 * Get the address and save it
	 * (at top of stack - 1)
	 */
	operand_desc = walk_state->operands[walk_state->num_operands - 2];

	obj_desc->region.address = (acpi_physical_address)
	    operand_desc->integer.value;
	FUNC9(operand_desc);

	FUNC0((ACPI_DB_EXEC, "RgnObj %p Addr %8.8X%8.8X Len %X\n",
			  obj_desc,
			  FUNC2(obj_desc->region.address),
			  obj_desc->region.length));

	status = FUNC8(obj_desc->region.space_id,
					   obj_desc->region.address,
					   obj_desc->region.length, node);

	/* Now the address and length are valid for this opregion */

	obj_desc->region.flags |= AOPOBJ_DATA_VALID;
	FUNC10(status);
}