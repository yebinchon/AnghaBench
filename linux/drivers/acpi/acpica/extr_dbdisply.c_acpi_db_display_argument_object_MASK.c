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
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
struct acpi_walk_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_operand_object*,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  acpi_gbl_cm_single_step ; 
 scalar_t__ acpi_gbl_db_thread_id ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(union acpi_operand_object *obj_desc,
				struct acpi_walk_state *walk_state)
{

#ifndef ACPI_APPLICATION
	if (acpi_gbl_db_thread_id != FUNC1()) {
		return;
	}
#endif

	if (!acpi_gbl_cm_single_step) {
		return;
	}

	FUNC2("ArgObj:  ");
	FUNC0(obj_desc, walk_state);
}