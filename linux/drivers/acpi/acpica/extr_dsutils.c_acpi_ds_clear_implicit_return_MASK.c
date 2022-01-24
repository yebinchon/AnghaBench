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
struct acpi_walk_state {int /*<<< orphan*/ * implicit_return_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_enable_interpreter_slack ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ds_clear_implicit_return ; 

void FUNC3(struct acpi_walk_state *walk_state)
{
	FUNC1(ds_clear_implicit_return);

	/*
	 * Slack must be enabled for this feature
	 */
	if (!acpi_gbl_enable_interpreter_slack) {
		return;
	}

	if (walk_state->implicit_return_obj) {
		/*
		 * Delete any "stale" implicit return. However, in
		 * complex statements, the implicit return value can be
		 * bubbled up several levels.
		 */
		FUNC0(*(ACPI_DB_DISPATCH,
				  "Removing reference on stale implicit return obj %p\n",
				  walk_state->implicit_return_obj));

		FUNC2(walk_state->implicit_return_obj);
		walk_state->implicit_return_obj = NULL;
	}
}