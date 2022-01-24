#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ acpi_status ;
struct TYPE_4__ {int /*<<< orphan*/  address; } ;
struct TYPE_5__ {TYPE_1__ sleep_status; TYPE_1__ sleep_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int ACPI_X_SLEEP_ENABLE ; 
 int ACPI_X_SLEEP_TYPE_MASK ; 
 int ACPI_X_SLEEP_TYPE_POSITION ; 
 int ACPI_X_WAKE_STATUS ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 scalar_t__ AE_NOT_EXIST ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__ acpi_gbl_FADT ; 
 int acpi_gbl_sleep_type_a ; 
 int /*<<< orphan*/  acpi_gbl_system_awake_and_running ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  hw_extended_sleep ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

acpi_status FUNC8(u8 sleep_state)
{
	acpi_status status;
	u8 sleep_control;
	u64 sleep_status;

	FUNC3(hw_extended_sleep);

	/* Extended sleep registers must be valid */

	if (!acpi_gbl_FADT.sleep_control.address ||
	    !acpi_gbl_FADT.sleep_status.address) {
		FUNC7(AE_NOT_EXIST);
	}

	/* Clear wake status (WAK_STS) */

	status = FUNC6((u64)ACPI_X_WAKE_STATUS,
			    &acpi_gbl_FADT.sleep_status);
	if (FUNC1(status)) {
		FUNC7(status);
	}

	acpi_gbl_system_awake_and_running = FALSE;

	/*
	 * Set the SLP_TYP and SLP_EN bits.
	 *
	 * Note: We only use the first value returned by the \_Sx method
	 * (acpi_gbl_sleep_type_a) - As per ACPI specification.
	 */
	FUNC0((ACPI_DB_INIT,
			  "Entering sleep state [S%u]\n", sleep_state));

	sleep_control = ((acpi_gbl_sleep_type_a << ACPI_X_SLEEP_TYPE_POSITION) &
			 ACPI_X_SLEEP_TYPE_MASK) | ACPI_X_SLEEP_ENABLE;

	/* Flush caches, as per ACPI specification */

	FUNC2();

	status = FUNC4(sleep_state, sleep_control, 0);
	if (status == AE_CTRL_TERMINATE) {
		FUNC7(AE_OK);
	}
	if (FUNC1(status)) {
		FUNC7(status);
	}

	status = FUNC6((u64)sleep_control, &acpi_gbl_FADT.sleep_control);
	if (FUNC1(status)) {
		FUNC7(status);
	}

	/* Wait for transition back to Working State */

	do {
		status = FUNC5(&sleep_status, &acpi_gbl_FADT.sleep_status);
		if (FUNC1(status)) {
			FUNC7(status);
		}

	} while (!(((u8)sleep_status) & ACPI_X_WAKE_STATUS));

	FUNC7(AE_OK);
}