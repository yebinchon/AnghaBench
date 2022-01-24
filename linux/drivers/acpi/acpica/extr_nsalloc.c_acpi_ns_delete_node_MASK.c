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
struct TYPE_5__ {scalar_t__ type; union acpi_operand_object* next_object; } ;
struct TYPE_4__ {int /*<<< orphan*/  pointer; int /*<<< orphan*/  (* handler ) (struct acpi_namespace_node*,int /*<<< orphan*/ ) ;} ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ data; } ;
struct acpi_namespace_node {union acpi_operand_object* object; } ;
struct TYPE_6__ {int /*<<< orphan*/  total_freed; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ALLOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_LOCAL_DATA ; 
 int /*<<< orphan*/  acpi_gbl_current_node_count ; 
 int /*<<< orphan*/  acpi_gbl_namespace_cache ; 
 TYPE_3__* acpi_gbl_ns_node_list ; 
 struct acpi_namespace_node* acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ns_delete_node ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_namespace_node*,int /*<<< orphan*/ ) ; 

void FUNC7(struct acpi_namespace_node *node)
{
	union acpi_operand_object *obj_desc;
	union acpi_operand_object *next_desc;

	FUNC1(ns_delete_node);

	if (!node) {
		return_VOID;
	}

	/* Detach an object if there is one */

	FUNC3(node);

	/*
	 * Delete an attached data object list if present (objects that were
	 * attached via acpi_attach_data). Note: After any normal object is
	 * detached above, the only possible remaining object(s) are data
	 * objects, in a linked list.
	 */
	obj_desc = node->object;
	while (obj_desc && (obj_desc->common.type == ACPI_TYPE_LOCAL_DATA)) {

		/* Invoke the attached data deletion handler if present */

		if (obj_desc->data.handler) {
			obj_desc->data.handler(node, obj_desc->data.pointer);
		}

		next_desc = obj_desc->common.next_object;
		FUNC5(obj_desc);
		obj_desc = next_desc;
	}

	/* Special case for the statically allocated root node */

	if (node == acpi_gbl_root_node) {
		return;
	}

	/* Now we can delete the node */

	(void)FUNC4(acpi_gbl_namespace_cache, node);

	FUNC2(acpi_gbl_ns_node_list->total_freed++);
	FUNC0((ACPI_DB_ALLOCATIONS, "Node %p, Remaining %X\n",
			  node, acpi_gbl_current_node_count));
}