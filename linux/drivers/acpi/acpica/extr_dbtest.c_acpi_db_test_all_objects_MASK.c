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
 int /*<<< orphan*/  ACPI_DB_READ_METHOD ; 
 int /*<<< orphan*/  ACPI_DB_WRITE_METHOD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  acpi_db_test_one_object ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_handle ; 
 int /*<<< orphan*/  read_method_code ; 
 int /*<<< orphan*/  write_handle ; 
 int /*<<< orphan*/  write_method_code ; 

__attribute__((used)) static void FUNC6(void)
{
	acpi_status status;

	/* Install the debugger read-object control method if necessary */

	if (!read_handle) {
		status = FUNC3(read_method_code);
		if (FUNC0(status)) {
			FUNC4
			    ("%s, Could not install debugger read method\n",
			     FUNC1(status));
			return;
		}

		status =
		    FUNC2(NULL, ACPI_DB_READ_METHOD, &read_handle);
		if (FUNC0(status)) {
			FUNC4
			    ("Could not obtain handle for debug method %s\n",
			     ACPI_DB_READ_METHOD);
			return;
		}
	}

	/* Install the debugger write-object control method if necessary */

	if (!write_handle) {
		status = FUNC3(write_method_code);
		if (FUNC0(status)) {
			FUNC4
			    ("%s, Could not install debugger write method\n",
			     FUNC1(status));
			return;
		}

		status =
		    FUNC2(NULL, ACPI_DB_WRITE_METHOD, &write_handle);
		if (FUNC0(status)) {
			FUNC4
			    ("Could not obtain handle for debug method %s\n",
			     ACPI_DB_WRITE_METHOD);
			return;
		}
	}

	/* Walk the entire namespace, testing each supported named data object */

	(void)FUNC5(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
				  ACPI_UINT32_MAX, acpi_db_test_one_object,
				  NULL, NULL, NULL);
}