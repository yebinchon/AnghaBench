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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_physical_address ;

/* Variables and functions */
 scalar_t__ ACPI_READ ; 
 scalar_t__ ACPI_WRITE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static acpi_status
FUNC5(u32 function, acpi_physical_address address,
		      u32 bits, u64 *value64,
		      void *handler_context, void *region_context)
{
	int i;
	u8 *value = (u8 *)value64;

	if (address > 0xff || !value64)
		return AE_BAD_PARAMETER;

	if (function != ACPI_WRITE && function != ACPI_READ)
		return AE_BAD_PARAMETER;

	FUNC3(&rtc_lock);

	for (i = 0; i < FUNC2(bits, 8); ++i, ++address, ++value)
		if (function == ACPI_READ)
			*value = FUNC0(address);
		else
			FUNC1(*value, address);

	FUNC4(&rtc_lock);

	return AE_OK;
}