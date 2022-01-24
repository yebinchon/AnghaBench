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
typedef  int u32 ;

/* Variables and functions */
 int ACPI_TYPE_NOT_FOUND ; 
#define  CMD_TEST_OBJECTS 129 
#define  CMD_TEST_PREDEFINED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  acpi_db_test_types ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(char *type_arg)
{
	u32 temp;

	FUNC4(type_arg);
	temp = FUNC1(type_arg, acpi_db_test_types);
	if (temp == ACPI_TYPE_NOT_FOUND) {
		FUNC3("Invalid or unsupported argument\n");
		return;
	}

	switch (temp) {
	case CMD_TEST_OBJECTS:

		FUNC2();
		break;

	case CMD_TEST_PREDEFINED:

		FUNC0(NULL);
		break;

	default:
		break;
	}
}