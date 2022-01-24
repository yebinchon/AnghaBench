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
struct TYPE_2__ {int flags; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_init_walk_info {int /*<<< orphan*/  package_init; int /*<<< orphan*/  field_init; int /*<<< orphan*/  package_count; int /*<<< orphan*/  buffer_count; int /*<<< orphan*/  field_count; int /*<<< orphan*/  op_region_count; int /*<<< orphan*/  object_count; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_object_type ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER 132 
#define  ACPI_TYPE_BUFFER_FIELD 131 
#define  ACPI_TYPE_LOCAL_BANK_FIELD 130 
#define  ACPI_TYPE_PACKAGE 129 
#define  ACPI_TYPE_REGION 128 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 union acpi_operand_object* FUNC6 (struct acpi_namespace_node*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  ns_init_one_object ; 

__attribute__((used)) static acpi_status
FUNC11(acpi_handle obj_handle,
			u32 level, void *context, void **return_value)
{
	acpi_object_type type;
	acpi_status status = AE_OK;
	struct acpi_init_walk_info *info =
	    (struct acpi_init_walk_info *)context;
	struct acpi_namespace_node *node =
	    (struct acpi_namespace_node *)obj_handle;
	union acpi_operand_object *obj_desc;

	FUNC2(ns_init_one_object);

	info->object_count++;

	/* And even then, we are only interested in a few object types */

	type = FUNC7(obj_handle);
	obj_desc = FUNC6(node);
	if (!obj_desc) {
		return (AE_OK);
	}

	/* Increment counters for object types we are looking for */

	switch (type) {
	case ACPI_TYPE_REGION:

		info->op_region_count++;
		break;

	case ACPI_TYPE_BUFFER_FIELD:

		info->field_count++;
		break;

	case ACPI_TYPE_LOCAL_BANK_FIELD:

		info->field_count++;
		break;

	case ACPI_TYPE_BUFFER:

		info->buffer_count++;
		break;

	case ACPI_TYPE_PACKAGE:

		info->package_count++;
		break;

	default:

		/* No init required, just exit now */

		return (AE_OK);
	}

	/* If the object is already initialized, nothing else to do */

	if (obj_desc->common.flags & AOPOBJ_DATA_VALID) {
		return (AE_OK);
	}

	/* Must lock the interpreter before executing AML code */

	FUNC4();

	/*
	 * Only initialization of Package objects can be deferred, in order
	 * to support forward references.
	 */
	switch (type) {
	case ACPI_TYPE_LOCAL_BANK_FIELD:

		/* TBD: bank_fields do not require deferred init, remove this code */

		info->field_init++;
		status = FUNC3(obj_desc);
		break;

	case ACPI_TYPE_PACKAGE:

		/* Complete the initialization/resolution of the package object */

		info->package_init++;
		status =
		    FUNC8(obj_handle, level, NULL, NULL);
		break;

	default:

		/* No other types should get here */

		status = AE_TYPE;
		FUNC0((AE_INFO, status,
				"Opcode is not deferred [%4.4s] (%s)",
				FUNC9(node),
				FUNC10(type)));
		break;
	}

	if (FUNC1(status)) {
		FUNC0((AE_INFO, status,
				"Could not execute arguments for [%4.4s] (%s)",
				FUNC9(node),
				FUNC10(type)));
	}

	/*
	 * We ignore errors from above, and always return OK, since we don't want
	 * to abort the walk on any single error.
	 */
	FUNC5();
	return (AE_OK);
}