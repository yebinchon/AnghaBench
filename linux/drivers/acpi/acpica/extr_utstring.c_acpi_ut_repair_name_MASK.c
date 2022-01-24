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
typedef  size_t u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,char*) ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  ACPI_ROOT_PATHNAME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  acpi_gbl_enable_interpreter_slack ; 
 scalar_t__ FUNC5 (char,size_t) ; 
 int /*<<< orphan*/  ut_repair_name ; 

void FUNC6(char *name)
{
	u32 i;
	u8 found_bad_char = FALSE;
	u32 original_name;

	FUNC3(ut_repair_name);

	/*
	 * Special case for the root node. This can happen if we get an
	 * error during the execution of module-level code.
	 */
	if (FUNC0(name, ACPI_ROOT_PATHNAME)) {
		return;
	}

	FUNC1(&original_name, name);

	/* Check each character in the name */

	for (i = 0; i < ACPI_NAMESEG_SIZE; i++) {
		if (FUNC5(name[i], i)) {
			continue;
		}

		/*
		 * Replace a bad character with something printable, yet technically
		 * still invalid. This prevents any collisions with existing "good"
		 * names in the namespace.
		 */
		name[i] = '*';
		found_bad_char = TRUE;
	}

	if (found_bad_char) {

		/* Report warning only if in strict mode or debug mode */

		if (!acpi_gbl_enable_interpreter_slack) {
			FUNC4((AE_INFO,
				      "Invalid character(s) in name (0x%.8X), repaired: [%4.4s]",
				      original_name, name));
		} else {
			FUNC2((ACPI_DB_INFO,
					  "Invalid character(s) in name (0x%.8X), repaired: [%4.4s]",
					  original_name, name));
		}
	}
}