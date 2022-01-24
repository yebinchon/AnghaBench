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
 int /*<<< orphan*/  ACPI_DB_CONSOLE_OUTPUT ; 
 scalar_t__ ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_db_walk_and_match_name ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 

acpi_status FUNC5(char *name_arg)
{
	char acpi_name[5] = "____";
	char *acpi_name_ptr = acpi_name;

	if (FUNC4(name_arg) > ACPI_NAMESEG_SIZE) {
		FUNC1("Name must be no longer than 4 characters\n");
		return (AE_OK);
	}

	/* Pad out name with underscores as necessary to create a 4-char name */

	FUNC2(name_arg);
	while (*name_arg) {
		*acpi_name_ptr = *name_arg;
		acpi_name_ptr++;
		name_arg++;
	}

	/* Walk the namespace from the root */

	(void)FUNC3(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
				  ACPI_UINT32_MAX, acpi_db_walk_and_match_name,
				  NULL, acpi_name, NULL);

	FUNC0(ACPI_DB_CONSOLE_OUTPUT);
	return (AE_OK);
}