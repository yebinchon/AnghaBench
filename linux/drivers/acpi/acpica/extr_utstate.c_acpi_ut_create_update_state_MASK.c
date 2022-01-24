#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_4__ {int /*<<< orphan*/  value; union acpi_operand_object* object; } ;
struct TYPE_3__ {int /*<<< orphan*/  descriptor_type; } ;
union acpi_generic_state {TYPE_2__ update; TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE_UPDATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 union acpi_generic_state* FUNC1 () ; 

union acpi_generic_state *FUNC2(union acpi_operand_object
						      *object, u16 action)
{
	union acpi_generic_state *state;

	FUNC0();

	/* Create the generic state object */

	state = FUNC1();
	if (!state) {
		return (NULL);
	}

	/* Init fields specific to the update struct */

	state->common.descriptor_type = ACPI_DESC_TYPE_STATE_UPDATE;
	state->update.object = object;
	state->update.value = action;
	return (state);
}