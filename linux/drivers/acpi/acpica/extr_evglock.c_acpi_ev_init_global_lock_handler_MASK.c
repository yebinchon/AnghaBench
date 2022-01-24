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
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_EVENT_GLOBAL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NO_HARDWARE_RESPONSE ; 
 scalar_t__ AE_OK ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  acpi_ev_global_lock_handler ; 
 void* acpi_gbl_global_lock_pending ; 
 int /*<<< orphan*/  acpi_gbl_global_lock_pending_lock ; 
 void* acpi_gbl_global_lock_present ; 
 scalar_t__ acpi_gbl_reduced_hardware ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ev_init_global_lock_handler ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

acpi_status FUNC6(void)
{
	acpi_status status;

	FUNC2(ev_init_global_lock_handler);

	/* If Hardware Reduced flag is set, there is no global lock */

	if (acpi_gbl_reduced_hardware) {
		FUNC5(AE_OK);
	}

	/* Attempt installation of the global lock handler */

	status = FUNC3(ACPI_EVENT_GLOBAL,
						  acpi_ev_global_lock_handler,
						  NULL);

	/*
	 * If the global lock does not exist on this platform, the attempt to
	 * enable GBL_STATUS will fail (the GBL_ENABLE bit will not stick).
	 * Map to AE_OK, but mark global lock as not present. Any attempt to
	 * actually use the global lock will be flagged with an error.
	 */
	acpi_gbl_global_lock_present = FALSE;
	if (status == AE_NO_HARDWARE_RESPONSE) {
		FUNC0((AE_INFO,
			    "No response from Global Lock hardware, disabling lock"));

		FUNC5(AE_OK);
	}

	status = FUNC4(&acpi_gbl_global_lock_pending_lock);
	if (FUNC1(status)) {
		FUNC5(status);
	}

	acpi_gbl_global_lock_pending = FALSE;
	acpi_gbl_global_lock_present = TRUE;
	FUNC5(status);
}