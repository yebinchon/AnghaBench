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
struct TYPE_2__ {struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {struct acpi_namespace_node* deferred_node; int /*<<< orphan*/  parse_flags; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_IMODE_EXECUTE ; 
 int /*<<< orphan*/  ACPI_IMODE_LOAD_PASS1 ; 
 int /*<<< orphan*/  ACPI_PARSE_DEFERRED_OP ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AML_INT_EVAL_SUBTREE_OP ; 
 struct acpi_walk_state* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_walk_state*,union acpi_parse_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 union acpi_parse_object* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  ds_execute_arguments ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC9(struct acpi_namespace_node *node,
			  struct acpi_namespace_node *scope_node,
			  u32 aml_length, u8 *aml_start)
{
	acpi_status status;
	union acpi_parse_object *op;
	struct acpi_walk_state *walk_state;

	FUNC1(ds_execute_arguments, aml_start);

	/* Allocate a new parser op to be the root of the parsed tree */

	op = FUNC5(AML_INT_EVAL_SUBTREE_OP, aml_start);
	if (!op) {
		FUNC8(AE_NO_MEMORY);
	}

	/* Save the Node for use in acpi_ps_parse_aml */

	op->common.node = scope_node;

	/* Create and initialize a new parser state */

	walk_state = FUNC2(0, NULL, NULL, NULL);
	if (!walk_state) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	status = FUNC4(walk_state, op, NULL, aml_start,
				       aml_length, NULL, ACPI_IMODE_LOAD_PASS1);
	if (FUNC0(status)) {
		FUNC3(walk_state);
		goto cleanup;
	}

	/* Mark this parse as a deferred opcode */

	walk_state->parse_flags = ACPI_PARSE_DEFERRED_OP;
	walk_state->deferred_node = node;

	/* Pass1: Parse the entire declaration */

	status = FUNC7(walk_state);
	if (FUNC0(status)) {
		goto cleanup;
	}

	/* Get and init the Op created above */

	op->common.node = node;
	FUNC6(op);

	/* Evaluate the deferred arguments */

	op = FUNC5(AML_INT_EVAL_SUBTREE_OP, aml_start);
	if (!op) {
		FUNC8(AE_NO_MEMORY);
	}

	op->common.node = scope_node;

	/* Create and initialize a new parser state */

	walk_state = FUNC2(0, NULL, NULL, NULL);
	if (!walk_state) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	/* Execute the opcode and arguments */

	status = FUNC4(walk_state, op, NULL, aml_start,
				       aml_length, NULL, ACPI_IMODE_EXECUTE);
	if (FUNC0(status)) {
		FUNC3(walk_state);
		goto cleanup;
	}

	/* Mark this execution as a deferred opcode */

	walk_state->deferred_node = node;
	status = FUNC7(walk_state);

cleanup:
	FUNC6(op);
	FUNC8(status);
}