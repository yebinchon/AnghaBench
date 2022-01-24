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
struct acpi_walk_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_walk_state*) ; 
 struct acpi_walk_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_current_walk_list ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(void)
{
	struct acpi_walk_state *walk_state;

	walk_state = FUNC1(acpi_gbl_current_walk_list);
	if (!walk_state) {
		FUNC2("There is no method currently executing\n");
		return;
	}

	FUNC0(walk_state);
}