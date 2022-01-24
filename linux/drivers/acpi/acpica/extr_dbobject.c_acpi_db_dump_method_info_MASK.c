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
struct acpi_walk_state {struct acpi_thread_state* thread; scalar_t__ deferred_node; struct acpi_namespace_node* method_node; } ;
struct acpi_thread_state {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int acpi_status ;

/* Variables and functions */
 int AE_CODE_CONTROL ; 
 int AE_CODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_walk_state*) ; 
 struct acpi_namespace_node* acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(acpi_status status, struct acpi_walk_state *walk_state)
{
	struct acpi_thread_state *thread;
	struct acpi_namespace_node *node;

	node = walk_state->method_node;

	/* There are no locals or arguments for the module-level code case */

	if (node == acpi_gbl_root_node) {
		return;
	}

	/* Ignore control codes, they are not errors */

	if ((status & AE_CODE_MASK) == AE_CODE_CONTROL) {
		return;
	}

	/* We may be executing a deferred opcode */

	if (walk_state->deferred_node) {
		FUNC2("Executing subtree for Buffer/Package/Region\n");
		return;
	}

	/*
	 * If there is no Thread, we are not actually executing a method.
	 * This can happen when the iASL compiler calls the interpreter
	 * to perform constant folding.
	 */
	thread = walk_state->thread;
	if (!thread) {
		return;
	}

	/* Display the method locals and arguments */

	FUNC2("\n");
	FUNC1(walk_state);
	FUNC2("\n");
	FUNC0(walk_state);
	FUNC2("\n");
}