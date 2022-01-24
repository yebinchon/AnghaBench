#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  address; int /*<<< orphan*/  space_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  aml_start; int /*<<< orphan*/  aml_length; } ;
struct TYPE_6__ {struct acpi_namespace_node* node; } ;
struct TYPE_5__ {int flags; } ;
union acpi_operand_object {TYPE_4__ region; TYPE_3__ extra; TYPE_2__ bank_field; TYPE_1__ common; } ;
struct acpi_namespace_node {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_LOCAL_BANK_FIELD ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  ds_get_bank_field_arguments ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC10(union acpi_operand_object *obj_desc)
{
	union acpi_operand_object *extra_desc;
	struct acpi_namespace_node *node;
	acpi_status status;

	FUNC3(ds_get_bank_field_arguments, obj_desc);

	if (obj_desc->common.flags & AOPOBJ_DATA_VALID) {
		FUNC9(AE_OK);
	}

	/* Get the AML pointer (method object) and bank_field node */

	extra_desc = FUNC5(obj_desc);
	node = obj_desc->bank_field.node;

	FUNC0(FUNC7
			(ACPI_TYPE_LOCAL_BANK_FIELD, node, NULL));

	FUNC1((ACPI_DB_EXEC, "[%4.4s] BankField Arg Init\n",
			  FUNC8(node)));

	/* Execute the AML code for the term_arg arguments */

	status = FUNC4(node, node->parent,
					   extra_desc->extra.aml_length,
					   extra_desc->extra.aml_start);
	if (FUNC2(status)) {
		FUNC9(status);
	}

	status = FUNC6(obj_desc->region.space_id,
					   obj_desc->region.address,
					   obj_desc->region.length, node);
	FUNC9(status);
}