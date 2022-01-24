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
typedef  scalar_t__ u32 ;
struct acpi_table_facs {int length; int version; scalar_t__ xfirmware_waking_vector; scalar_t__ firmware_waking_vector; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_physical_address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (struct acpi_table_facs*,scalar_t__,scalar_t__)) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC2(struct acpi_table_facs *facs,
				   acpi_physical_address physical_address,
				   acpi_physical_address physical_address64)
{
	FUNC0(acpi_hw_set_firmware_waking_vector);


	/*
	 * According to the ACPI specification 2.0c and later, the 64-bit
	 * waking vector should be cleared and the 32-bit waking vector should
	 * be used, unless we want the wake-up code to be called by the BIOS in
	 * Protected Mode.  Some systems (for example HP dv5-1004nr) are known
	 * to fail to resume if the 64-bit vector is used.
	 */

	/* Set the 32-bit vector */

	facs->firmware_waking_vector = (u32)physical_address;

	if (facs->length > 32) {
		if (facs->version >= 1) {

			/* Set the 64-bit vector */

			facs->xfirmware_waking_vector = physical_address64;
		} else {
			/* Clear the 64-bit vector if it exists */

			facs->xfirmware_waking_vector = 0;
		}
	}

	FUNC1(AE_OK);
}