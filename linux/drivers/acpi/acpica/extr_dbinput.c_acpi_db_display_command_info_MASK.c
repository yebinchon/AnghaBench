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
typedef  scalar_t__ u8 ;
struct acpi_db_command_help {scalar_t__ invocation; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,struct acpi_db_command_help const*) ; 
 struct acpi_db_command_help* acpi_gbl_db_command_help ; 

__attribute__((used)) static void FUNC1(const char *command, u8 display_all)
{
	const struct acpi_db_command_help *next;
	u8 matched;

	next = acpi_gbl_db_command_help;
	while (next->invocation) {
		matched = FUNC0(command, next);
		if (!display_all && matched) {
			return;
		}

		next++;
	}
}