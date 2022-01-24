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
struct TYPE_4__ {size_t value; } ;
struct TYPE_3__ {size_t count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ package; } ;
typedef  size_t u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object* result_obj; union acpi_operand_object** operands; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_UINT64_MAX ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_AML_OPERAND_VALUE ; 
 int /*<<< orphan*/  AE_AML_PACKAGE_LIMIT ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_LOAD_TABLE_OP 129 
#define  AML_MATCH_OP 128 
 size_t MAX_MATCH_OPERATOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,union acpi_operand_object*,union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_walk_state*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 union acpi_operand_object* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_opcode_6A_0T_1R ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status FUNC10(struct acpi_walk_state *walk_state)
{
	union acpi_operand_object **operand = &walk_state->operands[0];
	union acpi_operand_object *return_desc = NULL;
	acpi_status status = AE_OK;
	u64 index;
	union acpi_operand_object *this_element;

	FUNC3(ex_opcode_6A_0T_1R,
				FUNC6(walk_state->opcode));

	switch (walk_state->opcode) {
	case AML_MATCH_OP:
		/*
		 * Match (search_pkg[0], match_op1[1], match_obj1[2],
		 *                      match_op2[3], match_obj2[4], start_index[5])
		 */

		/* Validate both Match Term Operators (MTR, MEQ, etc.) */

		if ((operand[1]->integer.value > MAX_MATCH_OPERATOR) ||
		    (operand[3]->integer.value > MAX_MATCH_OPERATOR)) {
			FUNC0((AE_INFO, "Match operator out of range"));
			status = AE_AML_OPERAND_VALUE;
			goto cleanup;
		}

		/* Get the package start_index, validate against the package length */

		index = operand[5]->integer.value;
		if (index >= operand[0]->package.count) {
			FUNC0((AE_INFO,
				    "Index (0x%8.8X%8.8X) beyond package end (0x%X)",
				    FUNC2(index),
				    operand[0]->package.count));
			status = AE_AML_PACKAGE_LIMIT;
			goto cleanup;
		}

		/* Create an integer for the return value */
		/* Default return value is ACPI_UINT64_MAX if no match found */

		return_desc = FUNC7(ACPI_UINT64_MAX);
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;

		}

		/*
		 * Examine each element until a match is found. Both match conditions
		 * must be satisfied for a match to occur. Within the loop,
		 * "continue" signifies that the current element does not match
		 * and the next should be examined.
		 *
		 * Upon finding a match, the loop will terminate via "break" at
		 * the bottom. If it terminates "normally", match_value will be
		 * ACPI_UINT64_MAX (Ones) (its initial value) indicating that no
		 * match was found.
		 */
		for (; index < operand[0]->package.count; index++) {

			/* Get the current package element */

			this_element = operand[0]->package.elements[index];

			/* Treat any uninitialized (NULL) elements as non-matching */

			if (!this_element) {
				continue;
			}

			/*
			 * Both match conditions must be satisfied. Execution of a continue
			 * (proceed to next iteration of enclosing for loop) signifies a
			 * non-match.
			 */
			if (!FUNC4((u32) operand[1]->integer.value,
					      this_element, operand[2])) {
				continue;
			}

			if (!FUNC4((u32) operand[3]->integer.value,
					      this_element, operand[4])) {
				continue;
			}

			/* Match found: Index is the return value */

			return_desc->integer.value = index;
			break;
		}
		break;

	case AML_LOAD_TABLE_OP:

		status = FUNC5(walk_state, &return_desc);
		break;

	default:

		FUNC0((AE_INFO, "Unknown AML opcode 0x%X",
			    walk_state->opcode));

		status = AE_AML_BAD_OPCODE;
		goto cleanup;
	}

cleanup:

	/* Delete return object on error */

	if (FUNC1(status)) {
		FUNC8(return_desc);
	}

	/* Save return object on success */

	else {
		walk_state->result_obj = return_desc;
	}

	FUNC9(status);
}