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
struct TYPE_2__ {int /*<<< orphan*/  descriptor_type; } ;
union acpi_generic_state {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  acpi_gbl_state_cache ; 
 union acpi_generic_state* FUNC1 (int /*<<< orphan*/ ) ; 

union acpi_generic_state *FUNC2(void)
{
	union acpi_generic_state *state;

	FUNC0();

	state = FUNC1(acpi_gbl_state_cache);
	if (state) {

		/* Initialize */
		state->common.descriptor_type = ACPI_DESC_TYPE_STATE;
	}

	return (state);
}