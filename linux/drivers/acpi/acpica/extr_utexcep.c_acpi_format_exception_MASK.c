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
struct acpi_exception_info {char const* name; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  AE_INFO ; 
 struct acpi_exception_info* FUNC2 (int /*<<< orphan*/ ) ; 

const char *FUNC3(acpi_status status)
{
	const struct acpi_exception_info *exception;

	FUNC1();

	exception = FUNC2(status);
	if (!exception) {

		/* Exception code was not recognized */

		FUNC0((AE_INFO,
			    "Unknown exception code: 0x%8.8X", status));

		return ("UNKNOWN_STATUS_CODE");
	}

	return (exception->name);
}