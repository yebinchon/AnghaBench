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
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_2__ integer; } ;
typedef  scalar_t__ u8 ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; TYPE_1__* op_info; union acpi_operand_object** operands; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_UINT64_MAX ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TIME ; 
#define  AML_ACQUIRE_OP 129 
 int AML_LOGICAL ; 
 int AML_LOGICAL_NUMERIC ; 
#define  AML_WAIT_OP 128 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int,union acpi_operand_object*,union acpi_operand_object*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*,union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 union acpi_operand_object* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_opcode_2A_0T_1R ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status FUNC11(struct acpi_walk_state *walk_state)
{
	union acpi_operand_object **operand = &walk_state->operands[0];
	union acpi_operand_object *return_desc = NULL;
	acpi_status status = AE_OK;
	u8 logical_result = FALSE;

	FUNC2(ex_opcode_2A_0T_1R,
				FUNC7(walk_state->opcode));

	/* Create the internal return object */

	return_desc = FUNC8(ACPI_TYPE_INTEGER);
	if (!return_desc) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	/* Execute the Opcode */

	if (walk_state->op_info->flags & AML_LOGICAL_NUMERIC) {

		/* logical_op (Operand0, Operand1) */

		status = FUNC4(walk_state->opcode,
						       operand[0]->integer.
						       value,
						       operand[1]->integer.
						       value, &logical_result);
		goto store_logical_result;
	} else if (walk_state->op_info->flags & AML_LOGICAL) {

		/* logical_op (Operand0, Operand1) */

		status = FUNC5(walk_state->opcode, operand[0],
					       operand[1], &logical_result);
		goto store_logical_result;
	}

	switch (walk_state->opcode) {
	case AML_ACQUIRE_OP:	/* Acquire (mutex_object, Timeout) */

		status =
		    FUNC3(operand[1], operand[0], walk_state);
		if (status == AE_TIME) {
			logical_result = TRUE;	/* TRUE = Acquire timed out */
			status = AE_OK;
		}
		break;

	case AML_WAIT_OP:	/* Wait (event_object, Timeout) */

		status = FUNC6(operand[1], operand[0]);
		if (status == AE_TIME) {
			logical_result = TRUE;	/* TRUE, Wait timed out */
			status = AE_OK;
		}
		break;

	default:

		FUNC0((AE_INFO, "Unknown AML opcode 0x%X",
			    walk_state->opcode));

		status = AE_AML_BAD_OPCODE;
		goto cleanup;
	}

store_logical_result:
	/*
	 * Set return value to according to logical_result. logical TRUE (all ones)
	 * Default is FALSE (zero)
	 */
	if (logical_result) {
		return_desc->integer.value = ACPI_UINT64_MAX;
	}

cleanup:

	/* Delete return object on error */

	if (FUNC1(status)) {
		FUNC9(return_desc);
	}

	/* Save return object on success */

	else {
		walk_state->result_obj = return_desc;
	}

	FUNC10(status);
}