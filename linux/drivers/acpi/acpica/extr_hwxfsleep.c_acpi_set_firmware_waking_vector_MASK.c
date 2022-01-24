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
typedef  int /*<<< orphan*/  acpi_physical_address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ acpi_gbl_FACS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC3(acpi_physical_address physical_address,
				acpi_physical_address physical_address64)
{

	FUNC0(acpi_set_firmware_waking_vector);

	if (acpi_gbl_FACS) {
		(void)FUNC1(acpi_gbl_FACS,
							 physical_address,
							 physical_address64);
	}

	FUNC2(AE_OK);
}