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
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {int opcode; union acpi_operand_object** operands; } ;
struct acpi_namespace_node {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_BAD_OPCODE ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_NOTIFY_OP 128 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_opcode_2A_0T_0R ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status FUNC7(struct acpi_walk_state *walk_state)
{
	union acpi_operand_object **operand = &walk_state->operands[0];
	struct acpi_namespace_node *node;
	u32 value;
	acpi_status status = AE_OK;

	FUNC1(ex_opcode_2A_0T_0R,
				FUNC4(walk_state->opcode));

	/* Examine the opcode */

	switch (walk_state->opcode) {
	case AML_NOTIFY_OP:	/* Notify (notify_object, notify_value) */

		/* The first operand is a namespace node */

		node = (struct acpi_namespace_node *)operand[0];

		/* Second value is the notify value */

		value = (u32) operand[1]->integer.value;

		/* Are notifies allowed on this object? */

		if (!FUNC2(node)) {
			FUNC0((AE_INFO,
				    "Unexpected notify object type [%s]",
				    FUNC5(node->type)));

			status = AE_AML_OPERAND_TYPE;
			break;
		}

		/*
		 * Dispatch the notify to the appropriate handler
		 * NOTE: the request is queued for execution after this method
		 * completes. The notify handlers are NOT invoked synchronously
		 * from this thread -- because handlers may in turn run other
		 * control methods.
		 */
		status = FUNC3(node, value);
		break;

	default:

		FUNC0((AE_INFO, "Unknown AML opcode 0x%X",
			    walk_state->opcode));
		status = AE_AML_BAD_OPCODE;
	}

	FUNC6(status);
}