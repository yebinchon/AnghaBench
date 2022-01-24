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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_explicit_strtoul64 ; 

u64 FUNC7(char *string)
{
	u64 converted_integer = 0;
	u32 base = 10;		/* Default is decimal */

	FUNC0(ut_explicit_strtoul64, string);

	if (!FUNC5(&string)) {
		FUNC6(0);
	}

	/*
	 * Only Hex and Decimal are supported, as per the ACPI specification.
	 * A "0x" prefix indicates hex; otherwise decimal is assumed.
	 */
	if (FUNC3(&string)) {
		base = 16;
	}

	if (!FUNC4(&string)) {
		FUNC6(0);
	}

	/*
	 * Ignore overflow as per the ACPI specification. This is implemented by
	 * ignoring the return status from the conversion functions called below.
	 * On overflow, the input string is simply truncated.
	 */
	switch (base) {
	case 10:
	default:
		FUNC1(string, &converted_integer);
		break;

	case 16:
		FUNC2(string, &converted_integer);
		break;
	}

	FUNC6(converted_integer);
}