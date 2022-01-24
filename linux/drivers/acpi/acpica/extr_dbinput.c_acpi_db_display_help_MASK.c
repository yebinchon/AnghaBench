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
struct acpi_db_command_help {int /*<<< orphan*/  description; scalar_t__ invocation; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct acpi_db_command_help* acpi_gbl_db_command_help ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(char *command)
{
	const struct acpi_db_command_help *next = acpi_gbl_db_command_help;

	if (!command) {

		/* No argument to help, display help for all commands */

		FUNC1("\nSummary of AML Debugger Commands\n\n");

		while (next->invocation) {
			FUNC1("%-38s%s", next->invocation,
				       next->description);
			next++;
		}
		FUNC1("\n");

	} else {
		/* Display help for all commands that match the subtring */

		FUNC0(command, TRUE);
	}
}