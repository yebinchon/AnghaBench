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
struct TYPE_5__ {struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct TYPE_6__ {int /*<<< orphan*/  aml_length; int /*<<< orphan*/  aml_start; } ;
union acpi_operand_object {TYPE_3__ method; } ;
struct acpi_walk_state {int /*<<< orphan*/  descending_callback; } ;
struct TYPE_4__ {int /*<<< orphan*/  integer; } ;
struct acpi_namespace_node {int /*<<< orphan*/  owner_id; TYPE_1__ name; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AML_METHOD_OP ; 
 struct acpi_walk_state* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  acpi_ds_detect_named_opcodes ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_walk_state*,union acpi_parse_object*,struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 union acpi_parse_object* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_parse_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  ds_auto_serialize_method ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC13(struct acpi_namespace_node *node,
			      union acpi_operand_object *obj_desc)
{
	acpi_status status;
	union acpi_parse_object *op = NULL;
	struct acpi_walk_state *walk_state;

	FUNC2(ds_auto_serialize_method, node);

	FUNC0((ACPI_DB_PARSE,
			  "Method auto-serialization parse [%4.4s] %p\n",
			  FUNC11(node), node));

	/* Create/Init a root op for the method parse tree */

	op = FUNC6(AML_METHOD_OP, obj_desc->method.aml_start);
	if (!op) {
		FUNC12(AE_NO_MEMORY);
	}

	FUNC10(op, node->name.integer);
	op->common.node = node;

	/* Create and initialize a new walk state */

	walk_state =
	    FUNC3(node->owner_id, NULL, NULL, NULL);
	if (!walk_state) {
		FUNC8(op);
		FUNC12(AE_NO_MEMORY);
	}

	status = FUNC5(walk_state, op, node,
				       obj_desc->method.aml_start,
				       obj_desc->method.aml_length, NULL, 0);
	if (FUNC1(status)) {
		FUNC4(walk_state);
		FUNC8(op);
		FUNC12(status);
	}

	walk_state->descending_callback = acpi_ds_detect_named_opcodes;

	/* Parse the method, scan for creation of named objects */

	status = FUNC9(walk_state);

	FUNC7(op);
	FUNC12(status);
}