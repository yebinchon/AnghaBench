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
typedef  int u8 ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct acpi_generic_address {int bit_offset; int bit_width; scalar_t__ space_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_physical_address ;
typedef  scalar_t__ acpi_io_address ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  ACPI_DB_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (scalar_t__,struct acpi_generic_address*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_generic_address*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  hw_write ; 

acpi_status FUNC12(u64 value, struct acpi_generic_address *reg)
{
	u64 address;
	u8 access_width;
	u32 bit_width;
	u8 bit_offset;
	u64 value64;
	u8 index;
	acpi_status status;

	FUNC4(hw_write);

	/* Validate contents of the GAS register */

	status = FUNC8(reg, 64, &address);
	if (FUNC2(status)) {
		return (status);
	}

	/* Convert access_width into number of bits based */

	access_width = FUNC7(address, reg, 64);
	bit_width = reg->bit_offset + reg->bit_width;
	bit_offset = reg->bit_offset;

	/*
	 * Two address spaces supported: Memory or IO. PCI_Config is
	 * not supported here because the GAS structure is insufficient
	 */
	index = 0;
	while (bit_width) {
		/*
		 * Use offset style bit reads because "Index * AccessWidth" is
		 * ensured to be less than 64-bits by acpi_hw_validate_register().
		 */
		value64 = FUNC5(&value, index * access_width,
					FUNC6(access_width));

		if (bit_offset >= access_width) {
			bit_offset -= access_width;
		} else {
			if (reg->space_id == ACPI_ADR_SPACE_SYSTEM_MEMORY) {
				status =
				    FUNC10((acpi_physical_address)
							 address +
							 index *
							 FUNC1
							 (access_width),
							 value64, access_width);
			} else {	/* ACPI_ADR_SPACE_SYSTEM_IO, validated earlier */

				status = FUNC9((acpi_io_address)
							    address +
							    index *
							    FUNC1
							    (access_width),
							    (u32)value64,
							    access_width);
			}
		}

		/*
		 * Index * access_width is ensured to be less than 32-bits by
		 * acpi_hw_validate_register().
		 */
		bit_width -=
		    bit_width > access_width ? access_width : bit_width;
		index++;
	}

	FUNC0((ACPI_DB_IO,
			  "Wrote: %8.8X%8.8X width %2d   to %8.8X%8.8X (%s)\n",
			  FUNC3(value), access_width,
			  FUNC3(address),
			  FUNC11(reg->space_id)));

	return (status);
}