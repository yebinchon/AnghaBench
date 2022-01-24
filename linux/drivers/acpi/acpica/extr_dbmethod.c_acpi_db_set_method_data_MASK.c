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
struct TYPE_4__ {size_t value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct acpi_walk_state {TYPE_3__* local_variables; TYPE_2__* arguments; } ;
struct acpi_namespace_node {scalar_t__ type; union acpi_operand_object* object; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_6__ {union acpi_operand_object* object; } ;
struct TYPE_5__ {union acpi_operand_object* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t ACPI_METHOD_MAX_ARG ; 
 size_t ACPI_METHOD_MAX_LOCAL ; 
 int /*<<< orphan*/  ACPI_REFCLASS_ARG ; 
 int /*<<< orphan*/  ACPI_REFCLASS_LOCAL ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 struct acpi_namespace_node* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*,struct acpi_walk_state*) ; 
 struct acpi_walk_state* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  acpi_gbl_current_walk_list ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 union acpi_operand_object* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 size_t FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

void FUNC10(char *type_arg, char *index_arg, char *value_arg)
{
	char type;
	u32 index;
	u32 value;
	struct acpi_walk_state *walk_state;
	union acpi_operand_object *obj_desc;
	acpi_status status;
	struct acpi_namespace_node *node;

	/* Validate type_arg */

	FUNC8(type_arg);
	type = type_arg[0];
	if ((type != 'L') && (type != 'A') && (type != 'N')) {
		FUNC5("Invalid SET operand: %s\n", type_arg);
		return;
	}

	value = FUNC9(value_arg, NULL, 16);

	if (type == 'N') {
		node = FUNC1(index_arg);
		if (!node) {
			return;
		}

		if (node->type != ACPI_TYPE_INTEGER) {
			FUNC5("Can only set Integer nodes\n");
			return;
		}
		obj_desc = node->object;
		obj_desc->integer.value = value;
		return;
	}

	/* Get the index and value */

	index = FUNC9(index_arg, NULL, 16);

	walk_state = FUNC3(acpi_gbl_current_walk_list);
	if (!walk_state) {
		FUNC5("There is no method currently executing\n");
		return;
	}

	/* Create and initialize the new object */

	obj_desc = FUNC6((u64)value);
	if (!obj_desc) {
		FUNC5("Could not create an internal object\n");
		return;
	}

	/* Store the new object into the target */

	switch (type) {
	case 'A':

		/* Set a method argument */

		if (index > ACPI_METHOD_MAX_ARG) {
			FUNC5("Arg%u - Invalid argument name\n",
				       index);
			goto cleanup;
		}

		status = FUNC4(ACPI_REFCLASS_ARG,
						       index, obj_desc,
						       walk_state);
		if (FUNC0(status)) {
			goto cleanup;
		}

		obj_desc = walk_state->arguments[index].object;

		FUNC5("Arg%u: ", index);
		FUNC2(obj_desc, walk_state);
		break;

	case 'L':

		/* Set a method local */

		if (index > ACPI_METHOD_MAX_LOCAL) {
			FUNC5
			    ("Local%u - Invalid local variable name\n", index);
			goto cleanup;
		}

		status = FUNC4(ACPI_REFCLASS_LOCAL,
						       index, obj_desc,
						       walk_state);
		if (FUNC0(status)) {
			goto cleanup;
		}

		obj_desc = walk_state->local_variables[index].object;

		FUNC5("Local%u: ", index);
		FUNC2(obj_desc, walk_state);
		break;

	default:

		break;
	}

cleanup:
	FUNC7(obj_desc);
}