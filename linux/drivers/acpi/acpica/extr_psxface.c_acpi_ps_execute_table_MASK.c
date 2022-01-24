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
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;
struct acpi_walk_state {int /*<<< orphan*/  parse_flags; int /*<<< orphan*/  method_is_nested; int /*<<< orphan*/  method_pathname; } ;
struct acpi_evaluate_info {int /*<<< orphan*/  node; TYPE_2__* obj_desc; int /*<<< orphan*/  full_pathname; int /*<<< orphan*/  pass_number; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_3__ {int info_flags; int /*<<< orphan*/  aml_length; int /*<<< orphan*/  aml_start; int /*<<< orphan*/  owner_id; } ;
struct TYPE_4__ {TYPE_1__ method; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_METHOD_MODULE_LEVEL ; 
 int /*<<< orphan*/  ACPI_PARSE_MODULE_LEVEL ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 struct acpi_walk_state* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_walk_state*,union acpi_parse_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_evaluate_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  acpi_gbl_root_node ; 
 union acpi_parse_object* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  ps_execute_table ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

acpi_status FUNC12(struct acpi_evaluate_info *info)
{
	acpi_status status;
	union acpi_parse_object *op = NULL;
	struct acpi_walk_state *walk_state = NULL;

	FUNC1(ps_execute_table);

	/* Create and init a Root Node */

	op = FUNC8(info->obj_desc->method.aml_start);
	if (!op) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	/* Create and initialize a new walk state */

	walk_state =
	    FUNC2(info->obj_desc->method.owner_id, NULL,
				      NULL, NULL);
	if (!walk_state) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	status = FUNC4(walk_state, op, info->node,
				       info->obj_desc->method.aml_start,
				       info->obj_desc->method.aml_length, info,
				       info->pass_number);
	if (FUNC0(status)) {
		goto cleanup;
	}

	walk_state->method_pathname = info->full_pathname;
	walk_state->method_is_nested = FALSE;

	if (info->obj_desc->method.info_flags & ACPI_METHOD_MODULE_LEVEL) {
		walk_state->parse_flags |= ACPI_PARSE_MODULE_LEVEL;
	}

	/* Info->Node is the default location to load the table  */

	if (info->node && info->node != acpi_gbl_root_node) {
		status =
		    FUNC5(info->node, ACPI_TYPE_METHOD,
					     walk_state);
		if (FUNC0(status)) {
			goto cleanup;
		}
	}

	/*
	 * Parse the AML, walk_state will be deleted by parse_aml
	 */
	FUNC6();
	status = FUNC10(walk_state);
	FUNC7();
	walk_state = NULL;

cleanup:
	if (walk_state) {
		FUNC3(walk_state);
	}
	if (op) {
		FUNC9(op);
	}
	FUNC11(status);
}