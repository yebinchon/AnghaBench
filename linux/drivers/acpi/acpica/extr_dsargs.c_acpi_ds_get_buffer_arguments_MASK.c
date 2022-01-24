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
struct TYPE_4__ {int /*<<< orphan*/  aml_start; int /*<<< orphan*/  aml_length; struct acpi_namespace_node* node; } ;
struct TYPE_3__ {int flags; } ;
union acpi_operand_object {TYPE_2__ buffer; TYPE_1__ common; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*,struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds_get_buffer_arguments ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

acpi_status FUNC5(union acpi_operand_object *obj_desc)
{
	struct acpi_namespace_node *node;
	acpi_status status;

	FUNC2(ds_get_buffer_arguments, obj_desc);

	if (obj_desc->common.flags & AOPOBJ_DATA_VALID) {
		FUNC4(AE_OK);
	}

	/* Get the Buffer node */

	node = obj_desc->buffer.node;
	if (!node) {
		FUNC1((AE_INFO,
			    "No pointer back to namespace node in buffer object %p",
			    obj_desc));
		FUNC4(AE_AML_INTERNAL);
	}

	FUNC0((ACPI_DB_EXEC, "Buffer Arg Init\n"));

	/* Execute the AML code for the term_arg arguments */

	status = FUNC3(node, node,
					   obj_desc->buffer.aml_length,
					   obj_desc->buffer.aml_start);
	FUNC4(status);
}