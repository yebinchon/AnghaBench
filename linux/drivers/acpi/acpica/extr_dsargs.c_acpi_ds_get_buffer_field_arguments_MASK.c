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
struct TYPE_4__ {int /*<<< orphan*/  aml_start; int /*<<< orphan*/  aml_length; } ;
struct TYPE_6__ {struct acpi_namespace_node* node; } ;
struct TYPE_5__ {int flags; } ;
union acpi_operand_object {TYPE_1__ extra; TYPE_3__ buffer_field; TYPE_2__ common; } ;
struct acpi_namespace_node {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_BUFFER_FIELD ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  ds_get_buffer_field_arguments ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC8(union acpi_operand_object *obj_desc)
{
	union acpi_operand_object *extra_desc;
	struct acpi_namespace_node *node;
	acpi_status status;

	FUNC2(ds_get_buffer_field_arguments, obj_desc);

	if (obj_desc->common.flags & AOPOBJ_DATA_VALID) {
		FUNC7(AE_OK);
	}

	/* Get the AML pointer (method object) and buffer_field node */

	extra_desc = FUNC4(obj_desc);
	node = obj_desc->buffer_field.node;

	FUNC0(FUNC5
			(ACPI_TYPE_BUFFER_FIELD, node, NULL));

	FUNC1((ACPI_DB_EXEC, "[%4.4s] BufferField Arg Init\n",
			  FUNC6(node)));

	/* Execute the AML code for the term_arg arguments */

	status = FUNC3(node, node->parent,
					   extra_desc->extra.aml_length,
					   extra_desc->extra.aml_start);
	FUNC7(status);
}