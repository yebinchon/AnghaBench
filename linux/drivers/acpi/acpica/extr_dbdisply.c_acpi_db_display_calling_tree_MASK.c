#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct acpi_walk_state {struct acpi_walk_state* next; struct acpi_namespace_node* method_node; } ;
struct acpi_namespace_node {int dummy; } ;

/* Variables and functions */
 struct acpi_walk_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_current_walk_list ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*) ; 

void FUNC3(void)
{
	struct acpi_walk_state *walk_state;
	struct acpi_namespace_node *node;

	walk_state = FUNC0(acpi_gbl_current_walk_list);
	if (!walk_state) {
		FUNC1("There is no method currently executing\n");
		return;
	}

	node = walk_state->method_node;
	FUNC1("Current Control Method Call Tree\n");

	while (walk_state) {
		node = walk_state->method_node;
		FUNC1("  [%4.4s]\n", FUNC2(node));

		walk_state = walk_state->next;
	}
}