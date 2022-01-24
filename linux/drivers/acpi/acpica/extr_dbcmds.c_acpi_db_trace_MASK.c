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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_EXECUTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_LV_TRACE_POINT ; 
 int /*<<< orphan*/  ACPI_TRACE_ENABLED ; 
 int /*<<< orphan*/  ACPI_TRACE_ONESHOT ; 
 int /*<<< orphan*/  ACPI_TRACE_OPCODE ; 
 int /*<<< orphan*/ * acpi_db_trace_method_name ; 
 int /*<<< orphan*/  acpi_dbg_layer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_db_console_debug_level ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

void FUNC8(char *enable_arg, char *method_arg, char *once_arg)
{
	u32 debug_level = 0;
	u32 debug_layer = 0;
	u32 flags = 0;

	FUNC4(enable_arg);
	FUNC4(once_arg);

	if (method_arg) {
		if (acpi_db_trace_method_name) {
			FUNC1(acpi_db_trace_method_name);
			acpi_db_trace_method_name = NULL;
		}

		acpi_db_trace_method_name =
		    FUNC0(FUNC7(method_arg) + 1);
		if (!acpi_db_trace_method_name) {
			FUNC3("Failed to allocate method name (%s)\n",
				       method_arg);
			return;
		}

		FUNC6(acpi_db_trace_method_name, method_arg);
	}

	if (!FUNC5(enable_arg, "ENABLE") ||
	    !FUNC5(enable_arg, "METHOD") || !FUNC5(enable_arg, "OPCODE")) {
		if (!FUNC5(enable_arg, "ENABLE")) {

			/* Inherit current console settings */

			debug_level = acpi_gbl_db_console_debug_level;
			debug_layer = acpi_dbg_layer;
		} else {
			/* Restrict console output to trace points only */

			debug_level = ACPI_LV_TRACE_POINT;
			debug_layer = ACPI_EXECUTER;
		}

		flags = ACPI_TRACE_ENABLED;

		if (!FUNC5(enable_arg, "OPCODE")) {
			flags |= ACPI_TRACE_OPCODE;
		}

		if (once_arg && !FUNC5(once_arg, "ONCE")) {
			flags |= ACPI_TRACE_ONESHOT;
		}
	}

	(void)FUNC2(acpi_db_trace_method_name,
			       debug_level, debug_layer, flags);
}