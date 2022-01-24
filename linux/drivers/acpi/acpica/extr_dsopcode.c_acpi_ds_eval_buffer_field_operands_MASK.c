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
struct TYPE_3__ {union acpi_parse_object* arg; } ;
struct TYPE_4__ {scalar_t__ aml_opcode; TYPE_1__ value; struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_2__ common; } ;
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_walk_state {int /*<<< orphan*/ ** operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union acpi_parse_object*) ; 
 int /*<<< orphan*/  ACPI_WALK_OPERANDS ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 scalar_t__ AML_CREATE_FIELD_OP ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_walk_state*,union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,union acpi_operand_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 union acpi_operand_object* FUNC6 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  ds_eval_buffer_field_operands ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC9(struct acpi_walk_state *walk_state,
				   union acpi_parse_object *op)
{
	acpi_status status;
	union acpi_operand_object *obj_desc;
	struct acpi_namespace_node *node;
	union acpi_parse_object *next_op;

	FUNC2(ds_eval_buffer_field_operands, op);

	/*
	 * This is where we evaluate the address and length fields of the
	 * create_xxx_field declaration
	 */
	node = op->common.node;

	/* next_op points to the op that holds the Buffer */

	next_op = op->common.value.arg;

	/* Evaluate/create the address and length operands */

	status = FUNC3(walk_state, next_op);
	if (FUNC1(status)) {
		FUNC8(status);
	}

	obj_desc = FUNC6(node);
	if (!obj_desc) {
		FUNC8(AE_NOT_EXIST);
	}

	/* Resolve the operands */

	status =
	    FUNC5(op->common.aml_opcode, ACPI_WALK_OPERANDS,
				     walk_state);
	if (FUNC1(status)) {
		FUNC0((AE_INFO, "(%s) bad operand(s), status 0x%X",
			    FUNC7(op->common.aml_opcode),
			    status));

		FUNC8(status);
	}

	/* Initialize the Buffer Field */

	if (op->common.aml_opcode == AML_CREATE_FIELD_OP) {

		/* NOTE: Slightly different operands for this opcode */

		status =
		    FUNC4(op->common.aml_opcode, obj_desc,
					      walk_state->operands[0],
					      walk_state->operands[1],
					      walk_state->operands[2],
					      walk_state->operands[3]);
	} else {
		/* All other, create_xxx_field opcodes */

		status =
		    FUNC4(op->common.aml_opcode, obj_desc,
					      walk_state->operands[0],
					      walk_state->operands[1], NULL,
					      walk_state->operands[2]);
	}

	FUNC8(status);
}