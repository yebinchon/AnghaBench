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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*,union acpi_operand_object**,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_store_direct_to_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC9(union acpi_operand_object *source_desc,
			     struct acpi_namespace_node *node,
			     struct acpi_walk_state *walk_state)
{
	acpi_status status;
	union acpi_operand_object *new_desc;

	FUNC2(ex_store_direct_to_node);

	FUNC0((ACPI_DB_EXEC,
			  "Storing [%s] (%p) directly into node [%s] (%p)"
			  " with no implicit conversion\n",
			  FUNC5(source_desc),
			  source_desc, FUNC6(node->type),
			  node));

	/* Copy the source object to a new object */

	status =
	    FUNC4(source_desc, &new_desc, walk_state);
	if (FUNC1(status)) {
		FUNC8(status);
	}

	/* Attach the new object to the node */

	status = FUNC3(node, new_desc, new_desc->common.type);
	FUNC7(new_desc);
	FUNC8(status);
}