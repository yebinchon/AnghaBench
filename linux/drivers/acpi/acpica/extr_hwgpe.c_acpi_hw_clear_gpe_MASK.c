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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_gpe_register_info {int /*<<< orphan*/  status_address; } ;
struct acpi_gpe_event_info {struct acpi_gpe_register_info* register_info; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

acpi_status FUNC3(struct acpi_gpe_event_info *gpe_event_info)
{
	struct acpi_gpe_register_info *gpe_register_info;
	acpi_status status;
	u32 register_bit;

	FUNC0();

	/* Get the info block for the entire GPE register */

	gpe_register_info = gpe_event_info->register_info;
	if (!gpe_register_info) {
		return (AE_NOT_EXIST);
	}

	/*
	 * Write a one to the appropriate bit in the status register to
	 * clear this GPE.
	 */
	register_bit = FUNC1(gpe_event_info);

	status =
	    FUNC2(register_bit, &gpe_register_info->status_address);
	return (status);
}