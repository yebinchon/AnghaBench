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
struct TYPE_6__ {scalar_t__ type; union acpi_operand_object* next_object; } ;
struct TYPE_5__ {int /*<<< orphan*/  space_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  aml_start; } ;
union acpi_operand_object {TYPE_3__ common; TYPE_2__ region; TYPE_1__ method; } ;
struct acpi_namespace_node {int flags; int /*<<< orphan*/  type; union acpi_operand_object* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_NAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 scalar_t__ ACPI_TYPE_LOCAL_DATA ; 
 scalar_t__ ACPI_TYPE_METHOD ; 
 scalar_t__ ACPI_TYPE_REGION ; 
 int ANOBJ_ALLOCATED_BUFFER ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ns_detach_object ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC7(struct acpi_namespace_node *node)
{
	union acpi_operand_object *obj_desc;

	FUNC2(ns_detach_object);

	obj_desc = node->object;

	if (!obj_desc || (obj_desc->common.type == ACPI_TYPE_LOCAL_DATA)) {
		return_VOID;
	}

	if (node->flags & ANOBJ_ALLOCATED_BUFFER) {

		/* Free the dynamic aml buffer */

		if (obj_desc->common.type == ACPI_TYPE_METHOD) {
			FUNC1(obj_desc->method.aml_start);
		}
	}

	if (obj_desc->common.type == ACPI_TYPE_REGION) {
		FUNC5(obj_desc->region.space_id, node);
	}

	/* Clear the Node entry in all cases */

	node->object = NULL;
	if (FUNC3(obj_desc) == ACPI_DESC_TYPE_OPERAND) {

		/* Unlink object from front of possible object list */

		node->object = obj_desc->common.next_object;

		/* Handle possible 2-descriptor object */

		if (node->object &&
		    (node->object->common.type != ACPI_TYPE_LOCAL_DATA)) {
			node->object = node->object->common.next_object;
		}

		/*
		 * Detach the object from any data objects (which are still held by
		 * the namespace node)
		 */
		if (obj_desc->common.next_object &&
		    ((obj_desc->common.next_object)->common.type ==
		     ACPI_TYPE_LOCAL_DATA)) {
			obj_desc->common.next_object = NULL;
		}
	}

	/* Reset the node type to untyped */

	node->type = ACPI_TYPE_ANY;

	FUNC0((ACPI_DB_NAMES, "Node %p [%4.4s] Object %p\n",
			  node, FUNC4(node), obj_desc));

	/* Remove one reference on the object (and all subobjects) */

	FUNC6(obj_desc);
	return_VOID;
}