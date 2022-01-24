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
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) ()) ; 
 scalar_t__ ACPI_INVALID_TABLE_INDEX ; 
 scalar_t__ ACPI_SYS_MODE_ACPI ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_ACPI_TABLES ; 
 int /*<<< orphan*/  AE_NO_HARDWARE_RESPONSE ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ acpi_gbl_fadt_index ; 
 scalar_t__ acpi_gbl_reduced_hardware ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

acpi_status FUNC9(void)
{
	acpi_status status;
	int retry;

	FUNC3(acpi_enable);

	/* ACPI tables must be present */

	if (acpi_gbl_fadt_index == ACPI_INVALID_TABLE_INDEX) {
		FUNC8(AE_NO_ACPI_TABLES);
	}

	/* If the Hardware Reduced flag is set, machine is always in acpi mode */

	if (acpi_gbl_reduced_hardware) {
		FUNC8(AE_OK);
	}

	/* Check current mode */

	if (FUNC5() == ACPI_SYS_MODE_ACPI) {
		FUNC0((ACPI_DB_INIT,
				  "System is already in ACPI mode\n"));
		FUNC8(AE_OK);
	}

	/* Transition to ACPI mode */

	status = FUNC6(ACPI_SYS_MODE_ACPI);
	if (FUNC2(status)) {
		FUNC1((AE_INFO,
			    "Could not transition to ACPI mode"));
		FUNC8(status);
	}

	/* Sanity check that transition succeeded */

	for (retry = 0; retry < 30000; ++retry) {
		if (FUNC5() == ACPI_SYS_MODE_ACPI) {
			if (retry != 0)
				FUNC4((AE_INFO,
				"Platform took > %d00 usec to enter ACPI mode", retry));
			FUNC8(AE_OK);
		}
		FUNC7(100);	/* 100 usec */
	}

	FUNC1((AE_INFO, "Hardware did not enter ACPI mode"));
	FUNC8(AE_NO_HARDWARE_RESPONSE);
}