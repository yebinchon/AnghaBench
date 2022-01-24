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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_implicit_strtoul64 ; 

u64 FUNC6(char *string)
{
	u64 converted_integer = 0;

	FUNC0(ut_implicit_strtoul64, string);

	if (!FUNC4(&string)) {
		FUNC5(0);
	}

	/*
	 * Per the ACPI specification, only hexadecimal is supported for
	 * implicit conversions, and the "0x" prefix is "not allowed".
	 * However, allow a "0x" prefix as an ACPI extension.
	 */
	FUNC2(&string);

	if (!FUNC3(&string)) {
		FUNC5(0);
	}

	/*
	 * Ignore overflow as per the ACPI specification. This is implemented by
	 * ignoring the return status from the conversion function called below.
	 * On overflow, the input string is simply truncated.
	 */
	FUNC1(string, &converted_integer);
	FUNC5(converted_integer);
}