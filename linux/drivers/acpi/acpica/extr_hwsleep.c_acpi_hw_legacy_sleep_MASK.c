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
typedef  int u32 ;
struct acpi_bit_register_info {int access_bit_mask; int bit_position; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITREG_SLEEP_ENABLE ; 
 int /*<<< orphan*/  ACPI_BITREG_SLEEP_TYPE ; 
 int /*<<< orphan*/  ACPI_BITREG_WAKE_STATUS ; 
 int /*<<< orphan*/  ACPI_CLEAR_STATUS ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_REGISTER_PM1_CONTROL ; 
 scalar_t__ ACPI_STATE_S3 ; 
 int ACPI_USEC_PER_SEC ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int acpi_gbl_sleep_type_a ; 
 int acpi_gbl_sleep_type_b ; 
 int /*<<< orphan*/  acpi_gbl_system_awake_and_running ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 struct acpi_bit_register_info* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw_legacy_sleep ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

acpi_status FUNC16(u8 sleep_state)
{
	struct acpi_bit_register_info *sleep_type_reg_info;
	struct acpi_bit_register_info *sleep_enable_reg_info;
	u32 pm1a_control;
	u32 pm1b_control;
	u32 in_value;
	acpi_status status;

	FUNC3(hw_legacy_sleep);

	sleep_type_reg_info =
	    FUNC7(ACPI_BITREG_SLEEP_TYPE);
	sleep_enable_reg_info =
	    FUNC7(ACPI_BITREG_SLEEP_ENABLE);

	/* Clear wake status */

	status = FUNC14(ACPI_BITREG_WAKE_STATUS,
					 ACPI_CLEAR_STATUS);
	if (FUNC1(status)) {
		FUNC15(status);
	}

	/* Disable all GPEs */
	status = FUNC5();
	if (FUNC1(status)) {
		FUNC15(status);
	}
	status = FUNC4();
	if (FUNC1(status)) {
		FUNC15(status);
	}
	acpi_gbl_system_awake_and_running = FALSE;

	 /* Enable all wakeup GPEs */
	status = FUNC6();
	if (FUNC1(status)) {
		FUNC15(status);
	}

	/* Get current value of PM1A control */

	status = FUNC8(ACPI_REGISTER_PM1_CONTROL,
				       &pm1a_control);
	if (FUNC1(status)) {
		FUNC15(status);
	}
	FUNC0((ACPI_DB_INIT,
			  "Entering sleep state [S%u]\n", sleep_state));

	/* Clear the SLP_EN and SLP_TYP fields */

	pm1a_control &= ~(sleep_type_reg_info->access_bit_mask |
			  sleep_enable_reg_info->access_bit_mask);
	pm1b_control = pm1a_control;

	/* Insert the SLP_TYP bits */

	pm1a_control |=
	    (acpi_gbl_sleep_type_a << sleep_type_reg_info->bit_position);
	pm1b_control |=
	    (acpi_gbl_sleep_type_b << sleep_type_reg_info->bit_position);

	/*
	 * We split the writes of SLP_TYP and SLP_EN to workaround
	 * poorly implemented hardware.
	 */

	/* Write #1: write the SLP_TYP data to the PM1 Control registers */

	status = FUNC10(pm1a_control, pm1b_control);
	if (FUNC1(status)) {
		FUNC15(status);
	}

	/* Insert the sleep enable (SLP_EN) bit */

	pm1a_control |= sleep_enable_reg_info->access_bit_mask;
	pm1b_control |= sleep_enable_reg_info->access_bit_mask;

	/* Flush caches, as per ACPI specification */

	FUNC2();

	status = FUNC11(sleep_state, pm1a_control, pm1b_control);
	if (status == AE_CTRL_TERMINATE) {
		FUNC15(AE_OK);
	}
	if (FUNC1(status)) {
		FUNC15(status);
	}

	/* Write #2: Write both SLP_TYP + SLP_EN */

	status = FUNC10(pm1a_control, pm1b_control);
	if (FUNC1(status)) {
		FUNC15(status);
	}

	if (sleep_state > ACPI_STATE_S3) {
		/*
		 * We wanted to sleep > S3, but it didn't happen (by virtue of the
		 * fact that we are still executing!)
		 *
		 * Wait ten seconds, then try again. This is to get S4/S5 to work on
		 * all machines.
		 *
		 * We wait so long to allow chipsets that poll this reg very slowly
		 * to still read the right value. Ideally, this block would go
		 * away entirely.
		 */
		FUNC12(10 * ACPI_USEC_PER_SEC);

		status = FUNC9(ACPI_REGISTER_PM1_CONTROL,
						sleep_enable_reg_info->
						access_bit_mask);
		if (FUNC1(status)) {
			FUNC15(status);
		}
	}

	/* Wait for transition back to Working State */

	do {
		status =
		    FUNC13(ACPI_BITREG_WAKE_STATUS, &in_value);
		if (FUNC1(status)) {
			FUNC15(status);
		}

	} while (!in_value);

	FUNC15(AE_OK);
}