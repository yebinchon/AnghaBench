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
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  acpi_gbl_step_to_next_call ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(union acpi_parse_object *op)
{

	if (!op) {
		FUNC0("There is no method currently executing\n");
		return;
	}

	acpi_gbl_step_to_next_call = TRUE;
}