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
struct acpi_gpe_register_info {int mask_for_run; } ;
struct acpi_gpe_event_info {int /*<<< orphan*/  disable_for_dispatch; scalar_t__ runtime_count; struct acpi_gpe_register_info* register_info; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GPE_DISABLE ; 
 int /*<<< orphan*/  ACPI_GPE_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC3 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_gpe_event_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_mask_gpe ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC6(struct acpi_gpe_event_info *gpe_event_info, u8 is_masked)
{
	struct acpi_gpe_register_info *gpe_register_info;
	u32 register_bit;

	FUNC1(ev_mask_gpe);

	gpe_register_info = gpe_event_info->register_info;
	if (!gpe_register_info) {
		FUNC5(AE_NOT_EXIST);
	}

	register_bit = FUNC3(gpe_event_info);

	/* Perform the action */

	if (is_masked) {
		if (register_bit & gpe_register_info->mask_for_run) {
			FUNC5(AE_BAD_PARAMETER);
		}

		(void)FUNC4(gpe_event_info, ACPI_GPE_DISABLE);
		FUNC2(gpe_register_info->mask_for_run, (u8)register_bit);
	} else {
		if (!(register_bit & gpe_register_info->mask_for_run)) {
			FUNC5(AE_BAD_PARAMETER);
		}

		FUNC0(gpe_register_info->mask_for_run,
			       (u8)register_bit);
		if (gpe_event_info->runtime_count
		    && !gpe_event_info->disable_for_dispatch) {
			(void)FUNC4(gpe_event_info,
						  ACPI_GPE_ENABLE);
		}
	}

	FUNC5(AE_OK);
}