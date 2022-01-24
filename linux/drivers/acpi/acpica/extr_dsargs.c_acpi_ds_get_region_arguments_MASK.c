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
struct TYPE_4__ {int flags; int /*<<< orphan*/  length; int /*<<< orphan*/  address; int /*<<< orphan*/  space_id; struct acpi_namespace_node* node; } ;
struct TYPE_3__ {int /*<<< orphan*/  aml_start; int /*<<< orphan*/  aml_length; int /*<<< orphan*/  scope_node; } ;
union acpi_operand_object {TYPE_2__ region; TYPE_1__ extra; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_REGION ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  ds_get_region_arguments ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status FUNC10(union acpi_operand_object *obj_desc)
{
	struct acpi_namespace_node *node;
	acpi_status status;
	union acpi_operand_object *extra_desc;

	FUNC3(ds_get_region_arguments, obj_desc);

	if (obj_desc->region.flags & AOPOBJ_DATA_VALID) {
		FUNC9(AE_OK);
	}

	extra_desc = FUNC5(obj_desc);
	if (!extra_desc) {
		FUNC9(AE_NOT_EXIST);
	}

	/* Get the Region node */

	node = obj_desc->region.node;

	FUNC0(FUNC7
			(ACPI_TYPE_REGION, node, NULL));

	FUNC1((ACPI_DB_EXEC,
			  "[%4.4s] OpRegion Arg Init at AML %p\n",
			  FUNC8(node),
			  extra_desc->extra.aml_start));

	/* Execute the argument AML */

	status = FUNC4(node, extra_desc->extra.scope_node,
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