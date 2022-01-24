#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;
struct TYPE_5__ {scalar_t__ (* implementation ) (struct acpi_walk_state*) ;} ;
struct TYPE_6__ {size_t param_count; int info_flags; TYPE_2__ dispatch; int /*<<< orphan*/  aml_length; int /*<<< orphan*/  aml_start; int /*<<< orphan*/  owner_id; } ;
union acpi_operand_object {TYPE_3__ method; } ;
typedef  size_t u32 ;
struct acpi_walk_state {size_t num_operands; int method_nesting_depth; int /*<<< orphan*/ * method_pathname; int /*<<< orphan*/  method_is_nested; int /*<<< orphan*/ ** operands; struct acpi_namespace_node* method_call_node; int /*<<< orphan*/  prev_op; } ;
struct acpi_thread_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
struct acpi_evaluate_info {int /*<<< orphan*/ ** parameters; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 struct acpi_evaluate_info* FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  ACPI_DB_EVALUATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  ACPI_IMODE_EXECUTE ; 
 int ACPI_METHOD_INTERNAL_ONLY ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 scalar_t__ AE_NO_MEMORY ; 
 scalar_t__ AE_NULL_ENTRY ; 
 scalar_t__ AE_NULL_OBJECT ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (struct acpi_namespace_node*,union acpi_operand_object*,struct acpi_walk_state*) ; 
 struct acpi_walk_state* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,union acpi_operand_object*,struct acpi_thread_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_walk_state*) ; 
 scalar_t__ FUNC9 (struct acpi_walk_state*,int /*<<< orphan*/ *,struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_evaluate_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*,struct acpi_walk_state*) ; 
 union acpi_operand_object* FUNC11 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/ * FUNC12 (struct acpi_namespace_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ds_call_control_method ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (struct acpi_walk_state*) ; 

acpi_status
FUNC16(struct acpi_thread_state *thread,
			    struct acpi_walk_state *this_walk_state,
			    union acpi_parse_object *op)
{
	acpi_status status;
	struct acpi_namespace_node *method_node;
	struct acpi_walk_state *next_walk_state = NULL;
	union acpi_operand_object *obj_desc;
	struct acpi_evaluate_info *info;
	u32 i;

	FUNC5(ds_call_control_method, this_walk_state);

	FUNC1((ACPI_DB_DISPATCH,
			  "Calling method %p, currentstate=%p\n",
			  this_walk_state->prev_op, this_walk_state));

	/*
	 * Get the namespace entry for the control method we are about to call
	 */
	method_node = this_walk_state->method_call_node;
	if (!method_node) {
		FUNC14(AE_NULL_ENTRY);
	}

	obj_desc = FUNC11(method_node);
	if (!obj_desc) {
		FUNC14(AE_NULL_OBJECT);
	}

	/* Init for new method, possibly wait on method mutex */

	status =
	    FUNC6(method_node, obj_desc,
					   this_walk_state);
	if (FUNC3(status)) {
		FUNC14(status);
	}

	/* Begin method parse/execution. Create a new walk state */

	next_walk_state =
	    FUNC7(obj_desc->method.owner_id, NULL, obj_desc,
				      thread);
	if (!next_walk_state) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	/*
	 * The resolved arguments were put on the previous walk state's operand
	 * stack. Operands on the previous walk state stack always
	 * start at index 0. Also, null terminate the list of arguments
	 */
	this_walk_state->operands[this_walk_state->num_operands] = NULL;

	/*
	 * Allocate and initialize the evaluation information block
	 * TBD: this is somewhat inefficient, should change interface to
	 * ds_init_aml_walk. For now, keeps this struct off the CPU stack
	 */
	info = FUNC0(sizeof(struct acpi_evaluate_info));
	if (!info) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	info->parameters = &this_walk_state->operands[0];

	status = FUNC9(next_walk_state, NULL, method_node,
				       obj_desc->method.aml_start,
				       obj_desc->method.aml_length, info,
				       ACPI_IMODE_EXECUTE);

	FUNC4(info);
	if (FUNC3(status)) {
		goto cleanup;
	}

	next_walk_state->method_nesting_depth =
	    this_walk_state->method_nesting_depth + 1;

	/*
	 * Delete the operands on the previous walkstate operand stack
	 * (they were copied to new objects)
	 */
	for (i = 0; i < obj_desc->method.param_count; i++) {
		FUNC13(this_walk_state->operands[i]);
		this_walk_state->operands[i] = NULL;
	}

	/* Clear the operand stack */

	this_walk_state->num_operands = 0;

	FUNC1((ACPI_DB_DISPATCH,
			  "**** Begin nested execution of [%4.4s] **** WalkState=%p\n",
			  method_node->name.ascii, next_walk_state));

	this_walk_state->method_pathname =
	    FUNC12(method_node, TRUE);
	this_walk_state->method_is_nested = TRUE;

	/* Optional object evaluation log */

	FUNC2(*(ACPI_DB_EVALUATION,
			      "%-26s:  %*s%s\n", "   Nested method call",
			      next_walk_state->method_nesting_depth * 3, " ",
			      &this_walk_state->method_pathname[1]));

	/* Invoke an internal method if necessary */

	if (obj_desc->method.info_flags & ACPI_METHOD_INTERNAL_ONLY) {
		status =
		    obj_desc->method.dispatch.implementation(next_walk_state);
		if (status == AE_OK) {
			status = AE_CTRL_TERMINATE;
		}
	}

	FUNC14(status);

cleanup:

	/* On error, we must terminate the method properly */

	FUNC10(obj_desc, next_walk_state);
	FUNC8(next_walk_state);

	FUNC14(status);
}