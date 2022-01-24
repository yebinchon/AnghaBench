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
struct acpi_table_wdat {int dummy; } ;
struct acpi_table_header {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_WDAT ; 
 scalar_t__ acpi_disabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 scalar_t__ FUNC2 (struct acpi_table_wdat const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static const struct acpi_table_wdat *FUNC4(void)
{
	const struct acpi_table_wdat *wdat = NULL;
	acpi_status status;

	if (acpi_disabled)
		return NULL;

	status = FUNC1(ACPI_SIG_WDAT, 0,
				(struct acpi_table_header **)&wdat);
	if (FUNC0(status)) {
		/* It is fine if there is no WDAT */
		return NULL;
	}

	if (FUNC2(wdat)) {
		FUNC3("Skipping WDAT on this system because it uses RTC SRAM\n");
		return NULL;
	}

	return wdat;
}