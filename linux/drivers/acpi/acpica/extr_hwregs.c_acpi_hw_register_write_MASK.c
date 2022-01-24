#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  smi_command; int /*<<< orphan*/  xpm_timer_block; int /*<<< orphan*/  xpm2_control_block; int /*<<< orphan*/  xpm1b_control_block; int /*<<< orphan*/  xpm1a_control_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ACPI_PM1_CONTROL_PRESERVED_BITS ; 
 int ACPI_PM1_STATUS_PRESERVED_BITS ; 
 int /*<<< orphan*/  ACPI_PM2_CONTROL_PRESERVED_BITS ; 
#define  ACPI_REGISTER_PM1_CONTROL 133 
#define  ACPI_REGISTER_PM1_ENABLE 132 
#define  ACPI_REGISTER_PM1_STATUS 131 
#define  ACPI_REGISTER_PM2_CONTROL 130 
#define  ACPI_REGISTER_PM_TIMER 129 
#define  ACPI_REGISTER_SMI_COMMAND_BLOCK 128 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 TYPE_1__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  acpi_gbl_xpm1a_enable ; 
 int /*<<< orphan*/  acpi_gbl_xpm1a_status ; 
 int /*<<< orphan*/  acpi_gbl_xpm1b_enable ; 
 int /*<<< orphan*/  acpi_gbl_xpm1b_status ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  hw_register_write ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status FUNC10(u32 register_id, u32 value)
{
	acpi_status status;
	u32 read_value;
	u64 read_value64;

	FUNC2(hw_register_write);

	switch (register_id) {
	case ACPI_REGISTER_PM1_STATUS:	/* PM1 A/B: 16-bit access each */
		/*
		 * Handle the "ignored" bit in PM1 Status. According to the ACPI
		 * specification, ignored bits are to be preserved when writing.
		 * Normally, this would mean a read/modify/write sequence. However,
		 * preserving a bit in the status register is different. Writing a
		 * one clears the status, and writing a zero preserves the status.
		 * Therefore, we must always write zero to the ignored bit.
		 *
		 * This behavior is clarified in the ACPI 4.0 specification.
		 */
		value &= ~ACPI_PM1_STATUS_PRESERVED_BITS;

		status = FUNC7(value,
						&acpi_gbl_xpm1a_status,
						&acpi_gbl_xpm1b_status);
		break;

	case ACPI_REGISTER_PM1_ENABLE:	/* PM1 A/B: 16-bit access each */

		status = FUNC7(value,
						&acpi_gbl_xpm1a_enable,
						&acpi_gbl_xpm1b_enable);
		break;

	case ACPI_REGISTER_PM1_CONTROL:	/* PM1 A/B: 16-bit access each */
		/*
		 * Perform a read first to preserve certain bits (per ACPI spec)
		 * Note: This includes SCI_EN, we never want to change this bit
		 */
		status = FUNC5(&read_value,
					       &acpi_gbl_FADT.
					       xpm1a_control_block,
					       &acpi_gbl_FADT.
					       xpm1b_control_block);
		if (FUNC1(status)) {
			goto exit;
		}

		/* Insert the bits to be preserved */

		FUNC3(value, ACPI_PM1_CONTROL_PRESERVED_BITS,
				 read_value);

		/* Now we can write the data */

		status = FUNC7(value,
						&acpi_gbl_FADT.
						xpm1a_control_block,
						&acpi_gbl_FADT.
						xpm1b_control_block);
		break;

	case ACPI_REGISTER_PM2_CONTROL:	/* 8-bit access */
		/*
		 * For control registers, all reserved bits must be preserved,
		 * as per the ACPI spec.
		 */
		status =
		    FUNC4(&read_value64,
				 &acpi_gbl_FADT.xpm2_control_block);
		if (FUNC1(status)) {
			goto exit;
		}
		read_value = (u32)read_value64;

		/* Insert the bits to be preserved */

		FUNC3(value, ACPI_PM2_CONTROL_PRESERVED_BITS,
				 read_value);

		status =
		    FUNC6(value, &acpi_gbl_FADT.xpm2_control_block);
		break;

	case ACPI_REGISTER_PM_TIMER:	/* 32-bit access */

		status = FUNC6(value, &acpi_gbl_FADT.xpm_timer_block);
		break;

	case ACPI_REGISTER_SMI_COMMAND_BLOCK:	/* 8-bit access */

		/* SMI_CMD is currently always in IO space */

		status =
		    FUNC8(acpi_gbl_FADT.smi_command, value, 8);
		break;

	default:

		FUNC0((AE_INFO, "Unknown Register ID: 0x%X", register_id));
		status = AE_BAD_PARAMETER;
		break;
	}

exit:
	FUNC9(status);
}