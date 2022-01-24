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
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;
typedef  int /*<<< orphan*/  acpi_io_address ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  ACPI_READ 129 
#define  ACPI_WRITE 128 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ex_system_io_space_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC6(u32 function,
				acpi_physical_address address,
				u32 bit_width,
				u64 *value,
				void *handler_context, void *region_context)
{
	acpi_status status = AE_OK;
	u32 value32;

	FUNC2(ex_system_io_space_handler);

	FUNC0((ACPI_DB_INFO,
			  "System-IO (width %u) R/W %u Address=%8.8X%8.8X\n",
			  bit_width, function, FUNC1(address)));

	/* Decode the function parameter */

	switch (function) {
	case ACPI_READ:

		status = FUNC3((acpi_io_address)address,
					   &value32, bit_width);
		*value = value32;
		break;

	case ACPI_WRITE:

		status = FUNC4((acpi_io_address)address,
					    (u32)*value, bit_width);
		break;

	default:

		status = AE_BAD_PARAMETER;
		break;
	}

	FUNC5(status);
}