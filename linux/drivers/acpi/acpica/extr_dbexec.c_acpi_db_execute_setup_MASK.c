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
struct acpi_db_method_info {char* name; int flags; scalar_t__* pathname; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_CONSOLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_DUPLICATE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_REDIRECTABLE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int EX_SINGLE_STEP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_cm_single_step ; 
 char* acpi_gbl_db_scope_buf ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__*,int,char*) ; 
 int /*<<< orphan*/  db_execute_setup ; 

__attribute__((used)) static acpi_status FUNC6(struct acpi_db_method_info *info)
{
	acpi_status status;

	FUNC1(db_execute_setup);

	/* Concatenate the current scope to the supplied name */

	info->pathname[0] = 0;
	if ((info->name[0] != '\\') && (info->name[0] != '/')) {
		if (FUNC5(info->pathname, sizeof(info->pathname),
					acpi_gbl_db_scope_buf)) {
			status = AE_BUFFER_OVERFLOW;
			goto error_exit;
		}
	}

	if (FUNC5(info->pathname, sizeof(info->pathname),
				info->name)) {
		status = AE_BUFFER_OVERFLOW;
		goto error_exit;
	}

	FUNC2(info->pathname);

	FUNC3(ACPI_DB_DUPLICATE_OUTPUT);
	FUNC4("Evaluating %s\n", info->pathname);

	if (info->flags & EX_SINGLE_STEP) {
		acpi_gbl_cm_single_step = TRUE;
		FUNC3(ACPI_DB_CONSOLE_OUTPUT);
	}

	else {
		/* No single step, allow redirection to a file */

		FUNC3(ACPI_DB_REDIRECTABLE_OUTPUT);
	}

	return (AE_OK);

error_exit:

	FUNC0((AE_INFO, status, "During setup for method execution"));
	return (status);
}