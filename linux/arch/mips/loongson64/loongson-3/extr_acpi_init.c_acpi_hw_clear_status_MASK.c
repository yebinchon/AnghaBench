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
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_GPE0_BLK ; 
 int /*<<< orphan*/  ACPI_PM_EVT_BLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	u16 value;

	/* PMStatus: Clear WakeStatus/PwrBtnStatus */
	value = FUNC1(ACPI_PM_EVT_BLK);
	value |= (1 << 8 | 1 << 15);
	FUNC3(value, ACPI_PM_EVT_BLK);

	/* GPEStatus: Clear all generated events */
	FUNC2(FUNC0(ACPI_GPE0_BLK), ACPI_GPE0_BLK);
}