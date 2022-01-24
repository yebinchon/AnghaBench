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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct acpi_bit_register_info {int access_bit_mask; int bit_position; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITREG_SLEEP_ENABLE ; 
 int /*<<< orphan*/  ACPI_BITREG_SLEEP_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_REGISTER_PM1_CONTROL ; 
 int /*<<< orphan*/  ACPI_STATE_S0 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int acpi_gbl_sleep_type_a ; 
 int acpi_gbl_sleep_type_b ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 struct acpi_bit_register_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  hw_legacy_wake_prep ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status FUNC7(u8 sleep_state)
{
	acpi_status status;
	struct acpi_bit_register_info *sleep_type_reg_info;
	struct acpi_bit_register_info *sleep_enable_reg_info;
	u32 pm1a_control;
	u32 pm1b_control;

	FUNC0(hw_legacy_wake_prep);

	/*
	 * Set SLP_TYPE and SLP_EN to state S0.
	 * This is unclear from the ACPI Spec, but it is required
	 * by some machines.
	 */
	status = FUNC2(ACPI_STATE_S0,
					  &acpi_gbl_sleep_type_a,
					  &acpi_gbl_sleep_type_b);
	if (FUNC1(status)) {
		sleep_type_reg_info =
		    FUNC3(ACPI_BITREG_SLEEP_TYPE);
		sleep_enable_reg_info =
		    FUNC3(ACPI_BITREG_SLEEP_ENABLE);

		/* Get current value of PM1A control */

		status = FUNC4(ACPI_REGISTER_PM1_CONTROL,
					       &pm1a_control);
		if (FUNC1(status)) {

			/* Clear the SLP_EN and SLP_TYP fields */

			pm1a_control &= ~(sleep_type_reg_info->access_bit_mask |
					  sleep_enable_reg_info->
					  access_bit_mask);
			pm1b_control = pm1a_control;

			/* Insert the SLP_TYP bits */

			pm1a_control |= (acpi_gbl_sleep_type_a <<
					 sleep_type_reg_info->bit_position);
			pm1b_control |= (acpi_gbl_sleep_type_b <<
					 sleep_type_reg_info->bit_position);

			/* Write the control registers and ignore any errors */

			(void)FUNC5(pm1a_control,
							pm1b_control);
		}
	}

	FUNC6(status);
}