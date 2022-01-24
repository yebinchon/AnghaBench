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
struct acpi_gpe_register_info {int enable_mask; int mask_for_run; int /*<<< orphan*/  enable_address; } ;
struct acpi_gpe_event_info {struct acpi_gpe_register_info* register_info; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
#define  ACPI_GPE_CONDITIONAL_ENABLE 130 
#define  ACPI_GPE_DISABLE 129 
#define  ACPI_GPE_ENABLE 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC5 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

acpi_status
FUNC8(struct acpi_gpe_event_info *gpe_event_info, u32 action)
{
	struct acpi_gpe_register_info *gpe_register_info;
	acpi_status status = AE_OK;
	u64 enable_mask;
	u32 register_bit;

	FUNC3();

	/* Get the info block for the entire GPE register */

	gpe_register_info = gpe_event_info->register_info;
	if (!gpe_register_info) {
		return (AE_NOT_EXIST);
	}

	/* Get current value of the enable register that contains this GPE */

	status = FUNC6(&enable_mask, &gpe_register_info->enable_address);
	if (FUNC2(status)) {
		return (status);
	}

	/* Set or clear just the bit that corresponds to this GPE */

	register_bit = FUNC5(gpe_event_info);
	switch (action) {
	case ACPI_GPE_CONDITIONAL_ENABLE:

		/* Only enable if the corresponding enable_mask bit is set */

		if (!(register_bit & gpe_register_info->enable_mask)) {
			return (AE_BAD_PARAMETER);
		}

		/*lint -fallthrough */

	case ACPI_GPE_ENABLE:

		FUNC4(enable_mask, register_bit);
		break;

	case ACPI_GPE_DISABLE:

		FUNC0(enable_mask, register_bit);
		break;

	default:

		FUNC1((AE_INFO, "Invalid GPE Action, %u", action));
		return (AE_BAD_PARAMETER);
	}

	if (!(register_bit & gpe_register_info->mask_for_run)) {

		/* Write the updated enable mask */

		status =
		    FUNC7(enable_mask,
				  &gpe_register_info->enable_address);
	}
	return (status);
}