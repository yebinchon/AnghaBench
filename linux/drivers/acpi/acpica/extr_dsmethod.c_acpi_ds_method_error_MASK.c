#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int /*<<< orphan*/  aml_start; } ;
struct acpi_walk_state {int /*<<< orphan*/  op; int /*<<< orphan*/  opcode; TYPE_5__* deferred_node; TYPE_3__* method_node; TYPE_1__ parser_state; int /*<<< orphan*/  aml; } ;
typedef  int acpi_status ;
typedef  int /*<<< orphan*/  acpi_name ;
struct TYPE_9__ {int /*<<< orphan*/  integer; } ;
struct TYPE_10__ {TYPE_4__ name; } ;
struct TYPE_7__ {int /*<<< orphan*/  integer; } ;
struct TYPE_8__ {TYPE_2__ name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int AE_CODE_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (int,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct acpi_walk_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

acpi_status
FUNC10(acpi_status status, struct acpi_walk_state *walk_state)
{
	u32 aml_offset;
	acpi_name name = 0;

	FUNC1();

	/* Ignore AE_OK and control exception codes */

	if (FUNC3(status) || (status & AE_CODE_CONTROL)) {
		return (status);
	}

	/* Invoke the global exception handler */

	if (&acpi_gbl_exception_handler) {

		/* Exit the interpreter, allow handler to execute methods */

		FUNC8();

		/*
		 * Handler can map the exception code to anything it wants, including
		 * AE_OK, in which case the executing method will not be aborted.
		 */
		aml_offset = (u32)FUNC2(walk_state->aml,
						walk_state->parser_state.
						aml_start);

		if (walk_state->method_node) {
			name = walk_state->method_node->name.integer;
		} else if (walk_state->deferred_node) {
			name = walk_state->deferred_node->name.integer;
		}

		status = FUNC9(status, name,
						    walk_state->opcode,
						    aml_offset, NULL);
		FUNC7();
	}

	FUNC5(walk_state);

	if (FUNC0(status)) {
		FUNC6(status, walk_state, walk_state->op);

		/* Display method locals/args if debugger is present */

#ifdef ACPI_DEBUGGER
		acpi_db_dump_method_info(status, walk_state);
#endif
	}

	return (status);
}