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
struct TYPE_2__ {int /*<<< orphan*/  ascii; } ;
union acpi_operand_object {scalar_t__ type; TYPE_1__ name; scalar_t__ object; } ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {scalar_t__ type; TYPE_1__ name; scalar_t__ object; } ;
struct acpi_integrity_info {int /*<<< orphan*/  objects; int /*<<< orphan*/  nodes; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 scalar_t__ FUNC0 (union acpi_operand_object*) ; 
 scalar_t__ ACPI_TYPE_LOCAL_ALIAS ; 
 scalar_t__ ACPI_TYPE_LOCAL_MAX ; 
 scalar_t__ ACPI_TYPE_LOCAL_METHOD_ALIAS ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 union acpi_operand_object* FUNC1 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC2 (char*,union acpi_operand_object*,...) ; 
 scalar_t__ FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC5(acpi_handle obj_handle,
		       u32 nesting_level, void *context, void **return_value)
{
	struct acpi_integrity_info *info =
	    (struct acpi_integrity_info *)context;
	struct acpi_namespace_node *node =
	    (struct acpi_namespace_node *)obj_handle;
	union acpi_operand_object *object;
	u8 alias = TRUE;

	info->nodes++;

	/* Verify the NS node, and dereference aliases */

	while (alias) {
		if (FUNC0(node) != ACPI_DESC_TYPE_NAMED) {
			FUNC2
			    ("Invalid Descriptor Type for Node %p [%s] - "
			     "is %2.2X should be %2.2X\n", node,
			     FUNC3(node),
			     FUNC0(node),
			     ACPI_DESC_TYPE_NAMED);
			return (AE_OK);
		}

		if ((node->type == ACPI_TYPE_LOCAL_ALIAS) ||
		    (node->type == ACPI_TYPE_LOCAL_METHOD_ALIAS)) {
			node = (struct acpi_namespace_node *)node->object;
		} else {
			alias = FALSE;
		}
	}

	if (node->type > ACPI_TYPE_LOCAL_MAX) {
		FUNC2("Invalid Object Type for Node %p, Type = %X\n",
			       node, node->type);
		return (AE_OK);
	}

	if (!FUNC4(node->name.ascii)) {
		FUNC2("Invalid AcpiName for Node %p\n", node);
		return (AE_OK);
	}

	object = FUNC1(node);
	if (object) {
		info->objects++;
		if (FUNC0(object) != ACPI_DESC_TYPE_OPERAND) {
			FUNC2
			    ("Invalid Descriptor Type for Object %p [%s]\n",
			     object, FUNC3(object));
		}
	}

	return (AE_OK);
}