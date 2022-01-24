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
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  descriptor_type; } ;
union acpi_generic_state {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_CONTROL_CONDITIONAL_EXECUTING ; 
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 union acpi_generic_state* FUNC1 () ; 

union acpi_generic_state *FUNC2(void)
{
	union acpi_generic_state *state;

	FUNC0();

	/* Create the generic state object */

	state = FUNC1();
	if (!state) {
		return (NULL);
	}

	/* Init fields specific to the control struct */

	state->common.descriptor_type = ACPI_DESC_TYPE_STATE_CONTROL;
	state->common.state = ACPI_CONTROL_CONDITIONAL_EXECUTING;

	return (state);
}