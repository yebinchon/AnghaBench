#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef  int u64 ;
typedef  int u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; union acpi_operand_object** operands; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_EXPLICIT_CONVERT_DECIMAL ; 
 int /*<<< orphan*/  ACPI_EXPLICIT_CONVERT_HEX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ACPI_INTEGER_BIT_SIZE ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int ACPI_UINT64_MAX ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_AML_NUMERIC_OVERFLOW ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_SUPPORT ; 
#define  AML_BIT_NOT_OP 141 
#define  AML_CONDITIONAL_REF_OF_OP 140 
#define  AML_COPY_OBJECT_OP 139 
#define  AML_FIND_SET_LEFT_BIT_OP 138 
#define  AML_FIND_SET_RIGHT_BIT_OP 137 
#define  AML_FROM_BCD_OP 136 
#define  AML_SHIFT_LEFT_BIT_OP 135 
#define  AML_SHIFT_RIGHT_BIT_OP 134 
#define  AML_STORE_OP 133 
#define  AML_TO_BCD_OP 132 
#define  AML_TO_BUFFER_OP 131 
#define  AML_TO_DECIMAL_STRING_OP 130 
#define  AML_TO_HEX_STRING_OP 129 
#define  AML_TO_INTEGER_OP 128 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*,union acpi_operand_object**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*,union acpi_operand_object**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int acpi_gbl_integer_nybble_width ; 
 struct acpi_namespace_node* acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC13 (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 union acpi_operand_object* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int*,int*) ; 
 int /*<<< orphan*/  ex_opcode_1A_1T_1R ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

acpi_status FUNC18(struct acpi_walk_state *walk_state)
{
	acpi_status status = AE_OK;
	union acpi_operand_object **operand = &walk_state->operands[0];
	union acpi_operand_object *return_desc = NULL;
	union acpi_operand_object *return_desc2 = NULL;
	u32 temp32;
	u32 i;
	u64 power_of_ten;
	u64 digit;

	FUNC3(ex_opcode_1A_1T_1R,
				FUNC11(walk_state->opcode));

	/* Examine the AML opcode */

	switch (walk_state->opcode) {
	case AML_BIT_NOT_OP:
	case AML_FIND_SET_LEFT_BIT_OP:
	case AML_FIND_SET_RIGHT_BIT_OP:
	case AML_FROM_BCD_OP:
	case AML_TO_BCD_OP:
	case AML_CONDITIONAL_REF_OF_OP:

		/* Create a return object of type Integer for these opcodes */

		return_desc = FUNC14(ACPI_TYPE_INTEGER);
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		switch (walk_state->opcode) {
		case AML_BIT_NOT_OP:	/* Not (Operand, Result)  */

			return_desc->integer.value = ~operand[0]->integer.value;
			break;

		case AML_FIND_SET_LEFT_BIT_OP:	/* find_set_left_bit (Operand, Result) */

			return_desc->integer.value = operand[0]->integer.value;

			/*
			 * Acpi specification describes Integer type as a little
			 * endian unsigned value, so this boundary condition is valid.
			 */
			for (temp32 = 0; return_desc->integer.value &&
			     temp32 < ACPI_INTEGER_BIT_SIZE; ++temp32) {
				return_desc->integer.value >>= 1;
			}

			return_desc->integer.value = temp32;
			break;

		case AML_FIND_SET_RIGHT_BIT_OP:	/* find_set_right_bit (Operand, Result) */

			return_desc->integer.value = operand[0]->integer.value;

			/*
			 * The Acpi specification describes Integer type as a little
			 * endian unsigned value, so this boundary condition is valid.
			 */
			for (temp32 = 0; return_desc->integer.value &&
			     temp32 < ACPI_INTEGER_BIT_SIZE; ++temp32) {
				return_desc->integer.value <<= 1;
			}

			/* Since the bit position is one-based, subtract from 33 (65) */

			return_desc->integer.value =
			    temp32 ==
			    0 ? 0 : (ACPI_INTEGER_BIT_SIZE + 1) - temp32;
			break;

		case AML_FROM_BCD_OP:	/* from_bcd (BCDValue, Result) */
			/*
			 * The 64-bit ACPI integer can hold 16 4-bit BCD characters
			 * (if table is 32-bit, integer can hold 8 BCD characters)
			 * Convert each 4-bit BCD value
			 */
			power_of_ten = 1;
			return_desc->integer.value = 0;
			digit = operand[0]->integer.value;

			/* Convert each BCD digit (each is one nybble wide) */

			for (i = 0;
			     (i < acpi_gbl_integer_nybble_width) && (digit > 0);
			     i++) {

				/* Get the least significant 4-bit BCD digit */

				temp32 = ((u32) digit) & 0xF;

				/* Check the range of the digit */

				if (temp32 > 9) {
					FUNC0((AE_INFO,
						    "BCD digit too large (not decimal): 0x%X",
						    temp32));

					status = AE_AML_NUMERIC_OVERFLOW;
					goto cleanup;
				}

				/* Sum the digit into the result with the current power of 10 */

				return_desc->integer.value +=
				    (((u64) temp32) * power_of_ten);

				/* Shift to next BCD digit */

				digit >>= 4;

				/* Next power of 10 */

				power_of_ten *= 10;
			}
			break;

		case AML_TO_BCD_OP:	/* to_bcd (Operand, Result) */

			return_desc->integer.value = 0;
			digit = operand[0]->integer.value;

			/* Each BCD digit is one nybble wide */

			for (i = 0;
			     (i < acpi_gbl_integer_nybble_width) && (digit > 0);
			     i++) {
				(void)FUNC16(digit, 10, &digit,
							   &temp32);

				/*
				 * Insert the BCD digit that resides in the
				 * remainder from above
				 */
				return_desc->integer.value |=
				    (((u64) temp32) << FUNC4(i));
			}

			/* Overflow if there is any data left in Digit */

			if (digit > 0) {
				FUNC0((AE_INFO,
					    "Integer too large to convert to BCD: 0x%8.8X%8.8X",
					    FUNC2(operand[0]->
							       integer.value)));
				status = AE_AML_NUMERIC_OVERFLOW;
				goto cleanup;
			}
			break;

		case AML_CONDITIONAL_REF_OF_OP:	/* cond_ref_of (source_object, Result) */
			/*
			 * This op is a little strange because the internal return value is
			 * different than the return value stored in the result descriptor
			 * (There are really two return values)
			 */
			if ((struct acpi_namespace_node *)operand[0] ==
			    acpi_gbl_root_node) {
				/*
				 * This means that the object does not exist in the namespace,
				 * return FALSE
				 */
				return_desc->integer.value = 0;
				goto cleanup;
			}

			/* Get the object reference, store it, and remove our reference */

			status = FUNC9(operand[0],
							      &return_desc2,
							      walk_state);
			if (FUNC1(status)) {
				goto cleanup;
			}

			status =
			    FUNC10(return_desc2, operand[1], walk_state);
			FUNC15(return_desc2);

			/* The object exists in the namespace, return TRUE */

			return_desc->integer.value = ACPI_UINT64_MAX;
			goto cleanup;

		default:

			/* No other opcodes get here */

			break;
		}
		break;

	case AML_STORE_OP:	/* Store (Source, Target) */
		/*
		 * A store operand is typically a number, string, buffer or lvalue
		 * Be careful about deleting the source object,
		 * since the object itself may have been stored.
		 */
		status = FUNC10(operand[0], operand[1], walk_state);
		if (FUNC1(status)) {
			FUNC17(status);
		}

		/* It is possible that the Store already produced a return object */

		if (!walk_state->result_obj) {
			/*
			 * Normally, we would remove a reference on the Operand[0]
			 * parameter; But since it is being used as the internal return
			 * object (meaning we would normally increment it), the two
			 * cancel out, and we simply don't do anything.
			 */
			walk_state->result_obj = operand[0];
			walk_state->operands[0] = NULL;	/* Prevent deletion */
		}
		FUNC17(status);

		/*
		 * ACPI 2.0 Opcodes
		 */
	case AML_COPY_OBJECT_OP:	/* copy_object (Source, Target) */

		status =
		    FUNC13(operand[0], &return_desc,
						    walk_state);
		break;

	case AML_TO_DECIMAL_STRING_OP:	/* to_decimal_string (Data, Result) */

		status =
		    FUNC8(operand[0], &return_desc,
					      ACPI_EXPLICIT_CONVERT_DECIMAL);
		if (return_desc == operand[0]) {

			/* No conversion performed, add ref to handle return value */

			FUNC12(return_desc);
		}
		break;

	case AML_TO_HEX_STRING_OP:	/* to_hex_string (Data, Result) */

		status =
		    FUNC8(operand[0], &return_desc,
					      ACPI_EXPLICIT_CONVERT_HEX);
		if (return_desc == operand[0]) {

			/* No conversion performed, add ref to handle return value */

			FUNC12(return_desc);
		}
		break;

	case AML_TO_BUFFER_OP:	/* to_buffer (Data, Result) */

		status = FUNC6(operand[0], &return_desc);
		if (return_desc == operand[0]) {

			/* No conversion performed, add ref to handle return value */

			FUNC12(return_desc);
		}
		break;

	case AML_TO_INTEGER_OP:	/* to_integer (Data, Result) */

		/* Perform "explicit" conversion */

		status =
		    FUNC7(operand[0], &return_desc, 0);
		if (return_desc == operand[0]) {

			/* No conversion performed, add ref to handle return value */

			FUNC12(return_desc);
		}
		break;

	case AML_SHIFT_LEFT_BIT_OP:	/* shift_left_bit (Source, bit_num) */
	case AML_SHIFT_RIGHT_BIT_OP:	/* shift_right_bit (Source, bit_num) */

		/* These are two obsolete opcodes */

		FUNC0((AE_INFO,
			    "%s is obsolete and not implemented",
			    FUNC11(walk_state->opcode)));
		status = AE_SUPPORT;
		goto cleanup;

	default:		/* Unknown opcode */

		FUNC0((AE_INFO, "Unknown AML opcode 0x%X",
			    walk_state->opcode));
		status = AE_AML_BAD_OPCODE;
		goto cleanup;
	}

	if (FUNC5(status)) {

		/* Store the return value computed above into the target object */

		status = FUNC10(return_desc, operand[1], walk_state);
	}

cleanup:

	/* Delete return object on error */

	if (FUNC1(status)) {
		FUNC15(return_desc);
	}

	/* Save return object on success */

	else if (!walk_state->result_obj) {
		walk_state->result_obj = return_desc;
	}

	FUNC17(status);
}