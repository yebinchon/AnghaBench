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
struct acpi_namestring_info {char const* external_name; char* internal_name; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_namestring_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_namestring_info*) ; 
 int /*<<< orphan*/  ns_internalize_name ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC7(const char *external_name, char **converted_name)
{
	char *internal_name;
	struct acpi_namestring_info info;
	acpi_status status;

	FUNC3(ns_internalize_name);

	if ((!external_name) || (*external_name == 0) || (!converted_name)) {
		FUNC6(AE_BAD_PARAMETER);
	}

	/* Get the length of the new internal name */

	info.external_name = external_name;
	FUNC5(&info);

	/* We need a segment to store the internal  name */

	internal_name = FUNC0(info.length);
	if (!internal_name) {
		FUNC6(AE_NO_MEMORY);
	}

	/* Build the name */

	info.internal_name = internal_name;
	status = FUNC4(&info);
	if (FUNC1(status)) {
		FUNC2(internal_name);
		FUNC6(status);
	}

	*converted_name = internal_name;
	FUNC6(AE_OK);
}