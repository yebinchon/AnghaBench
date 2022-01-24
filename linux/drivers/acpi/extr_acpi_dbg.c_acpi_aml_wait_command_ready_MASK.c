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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEBUGGER_COMMAND_PROMPT ; 
 int /*<<< orphan*/  ACPI_DEBUGGER_EXECUTE_PROMPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(bool single_step,
				       char *buffer, size_t length)
{
	acpi_status status;

	if (single_step)
		FUNC2("\n%1c ", ACPI_DEBUGGER_EXECUTE_PROMPT);
	else
		FUNC2("\n%1c ", ACPI_DEBUGGER_COMMAND_PROMPT);

	status = FUNC1(buffer, length, NULL);
	if (FUNC0(status))
		return -EINVAL;
	return 0;
}