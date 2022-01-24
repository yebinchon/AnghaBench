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
typedef  int u32 ;

/* Variables and functions */
 int ACPI_END ; 
 int ACPI_GPE0_BLK ; 
 int ACPI_PM_CNT_BLK ; 
 int ACPI_PM_EVT_BLK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

void FUNC7(void)
{
	u32 value;

	/* PM Status Base */
	FUNC6(0x20, ACPI_PM_EVT_BLK & 0xff);
	FUNC6(0x21, ACPI_PM_EVT_BLK >> 8);

	/* PM Control Base */
	FUNC6(0x22, ACPI_PM_CNT_BLK & 0xff);
	FUNC6(0x23, ACPI_PM_CNT_BLK >> 8);

	/* GPM Base */
	FUNC6(0x28, ACPI_GPE0_BLK & 0xff);
	FUNC6(0x29, ACPI_GPE0_BLK >> 8);

	/* ACPI End */
	FUNC6(0x2e, ACPI_END & 0xff);
	FUNC6(0x2f, ACPI_END >> 8);

	/* IO Decode: When AcpiDecodeEnable set, South-Bridge uses the contents
	 * of the PM registers at index 0x20~0x2B to decode ACPI I/O address. */
	FUNC6(0x0e, 1 << 3);

	/* SCI_EN set */
	FUNC2(1, ACPI_PM_CNT_BLK);

	/* Enable to generate SCI */
	FUNC6(0x10, FUNC5(0x10) | 1);

	/* GPM3/GPM9 enable */
	value = FUNC0(ACPI_GPE0_BLK + 4);
	FUNC1(value | (1 << 14) | (1 << 22), ACPI_GPE0_BLK + 4);

	/* Set GPM9 as input */
	FUNC6(0x8d, FUNC5(0x8d) & (~(1 << 1)));

	/* Set GPM9 as non-output */
	FUNC6(0x94, FUNC5(0x94) | (1 << 3));

	/* GPM3 config ACPI trigger SCIOUT */
	FUNC6(0x33, FUNC5(0x33) & (~(3 << 4)));

	/* GPM9 config ACPI trigger SCIOUT */
	FUNC6(0x3d, FUNC5(0x3d) & (~(3 << 2)));

	/* GPM3 config falling edge trigger */
	FUNC6(0x37, FUNC5(0x37) & (~(1 << 6)));

	/* No wait for STPGNT# in ACPI Sx state */
	FUNC6(0x7c, FUNC5(0x7c) | (1 << 6));

	/* Set GPM3 pull-down enable */
	value = FUNC3(0xf6);
	value |= ((1 << 7) | (1 << 3));
	FUNC4(0xf6, value);

	/* Set GPM9 pull-down enable */
	value = FUNC3(0xf8);
	value |= ((1 << 5) | (1 << 1));
	FUNC4(0xf8, value);
}