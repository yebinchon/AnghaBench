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
struct TYPE_2__ {union acpi_operand_object* next_object; } ;
union acpi_operand_object {scalar_t__ type; union acpi_operand_object* object; TYPE_1__ common; } ;
typedef  scalar_t__ u8 ;
struct acpi_namespace_node {scalar_t__ type; struct acpi_namespace_node* object; TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (union acpi_operand_object*) ; 
 scalar_t__ ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ns_attach_object ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC9(struct acpi_namespace_node *node,
		      union acpi_operand_object *object, acpi_object_type type)
{
	union acpi_operand_object *obj_desc;
	union acpi_operand_object *last_obj_desc;
	acpi_object_type object_type = ACPI_TYPE_ANY;

	FUNC2(ns_attach_object);

	/*
	 * Parameter validation
	 */
	if (!node) {

		/* Invalid handle */

		FUNC1((AE_INFO, "Null NamedObj handle"));
		FUNC8(AE_BAD_PARAMETER);
	}

	if (!object && (ACPI_TYPE_ANY != type)) {

		/* Null object */

		FUNC1((AE_INFO,
			    "Null object, but type not ACPI_TYPE_ANY"));
		FUNC8(AE_BAD_PARAMETER);
	}

	if (FUNC3(node) != ACPI_DESC_TYPE_NAMED) {

		/* Not a name handle */

		FUNC1((AE_INFO, "Invalid handle %p [%s]",
			    node, FUNC6(node)));
		FUNC8(AE_BAD_PARAMETER);
	}

	/* Check if this object is already attached */

	if (node->object == object) {
		FUNC0((ACPI_DB_EXEC,
				  "Obj %p already installed in NameObj %p\n",
				  object, node));

		FUNC8(AE_OK);
	}

	/* If null object, we will just install it */

	if (!object) {
		obj_desc = NULL;
		object_type = ACPI_TYPE_ANY;
	}

	/*
	 * If the source object is a namespace Node with an attached object,
	 * we will use that (attached) object
	 */
	else if ((FUNC3(object) == ACPI_DESC_TYPE_NAMED) &&
		 ((struct acpi_namespace_node *)object)->object) {
		/*
		 * Value passed is a name handle and that name has a
		 * non-null value. Use that name's value and type.
		 */
		obj_desc = ((struct acpi_namespace_node *)object)->object;
		object_type = ((struct acpi_namespace_node *)object)->type;
	}

	/*
	 * Otherwise, we will use the parameter object, but we must type
	 * it first
	 */
	else {
		obj_desc = (union acpi_operand_object *)object;

		/* Use the given type */

		object_type = type;
	}

	FUNC0((ACPI_DB_EXEC, "Installing %p into Node %p [%4.4s]\n",
			  obj_desc, node, FUNC7(node)));

	/* Detach an existing attached object if present */

	if (node->object) {
		FUNC4(node);
	}

	if (obj_desc) {
		/*
		 * Must increment the new value's reference count
		 * (if it is an internal object)
		 */
		FUNC5(obj_desc);

		/*
		 * Handle objects with multiple descriptors - walk
		 * to the end of the descriptor list
		 */
		last_obj_desc = obj_desc;
		while (last_obj_desc->common.next_object) {
			last_obj_desc = last_obj_desc->common.next_object;
		}

		/* Install the object at the front of the object list */

		last_obj_desc->common.next_object = node->object;
	}

	node->type = (u8) object_type;
	node->object = obj_desc;

	FUNC8(AE_OK);
}