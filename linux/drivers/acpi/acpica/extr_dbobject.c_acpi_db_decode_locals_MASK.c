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
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct acpi_walk_state {TYPE_1__* local_variables; struct acpi_namespace_node* method_node; } ;
struct acpi_namespace_node {scalar_t__ type; } ;
struct TYPE_2__ {union acpi_operand_object* object; } ;

/* Variables and functions */
 size_t ACPI_METHOD_NUM_LOCALS ; 
 scalar_t__ ACPI_TYPE_METHOD ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (union acpi_operand_object*,struct acpi_walk_state*) ; 
 struct acpi_namespace_node* acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t FUNC2 (struct acpi_namespace_node*) ; 

void FUNC3(struct acpi_walk_state *walk_state)
{
	u32 i;
	union acpi_operand_object *obj_desc;
	struct acpi_namespace_node *node;
	u8 display_locals = FALSE;

	node = walk_state->method_node;

	/* There are no locals for the module-level code case */

	if (node == acpi_gbl_root_node) {
		return;
	}

	if (!node) {
		FUNC1
		    ("No method node (Executing subtree for buffer or opregion)\n");
		return;
	}

	if (node->type != ACPI_TYPE_METHOD) {
		FUNC1("Executing subtree for Buffer/Package/Region\n");
		return;
	}

	/* Are any locals actually set? */

	for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++) {
		obj_desc = walk_state->local_variables[i].object;
		if (obj_desc) {
			display_locals = TRUE;
			break;
		}
	}

	/* If any are set, only display the ones that are set */

	if (display_locals) {
		FUNC1
		    ("\nInitialized Local Variables for Method [%4.4s]:\n",
		     FUNC2(node));

		for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++) {
			obj_desc = walk_state->local_variables[i].object;
			if (obj_desc) {
				FUNC1("  Local%X: ", i);
				FUNC0(obj_desc,
								walk_state);
			}
		}
	} else {
		FUNC1
		    ("No Local Variables are initialized for Method [%4.4s]\n",
		     FUNC2(node));
	}
}