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
typedef  union acpi_generic_state {int dummy; } acpi_generic_state ;
struct acpi_walk_state {scalar_t__ result_size; int /*<<< orphan*/  result_count; int /*<<< orphan*/ * results; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_RESULTS_FRAME_OBJ_NUM ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (union acpi_generic_state*) ; 
 union acpi_generic_state* FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ds_result_stack_pop ; 

__attribute__((used)) static acpi_status FUNC5(struct acpi_walk_state *walk_state)
{
	union acpi_generic_state *state;

	FUNC2(ds_result_stack_pop);

	/* Check for stack underflow */

	if (walk_state->results == NULL) {
		FUNC0((ACPI_DB_EXEC,
				  "Result stack underflow - State=%p\n",
				  walk_state));
		return (AE_AML_NO_OPERAND);
	}

	if (walk_state->result_size < ACPI_RESULTS_FRAME_OBJ_NUM) {
		FUNC1((AE_INFO, "Insufficient result stack size"));
		return (AE_AML_INTERNAL);
	}

	state = FUNC4(&walk_state->results);
	FUNC3(state);

	/* Decrease the length of result stack by the length of frame */

	walk_state->result_size -= ACPI_RESULTS_FRAME_OBJ_NUM;

	FUNC0((ACPI_DB_EXEC,
			  "Result=%p RemainingResults=%X State=%p\n",
			  state, walk_state->result_count, walk_state));

	return (AE_OK);
}