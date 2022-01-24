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

/* Variables and functions */
 int /*<<< orphan*/  EGPIO_MAGICIAN_NICD_CHARGE ; 
 int PDA_POWER_CHARGE_AC ; 
 int PDA_POWER_CHARGE_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(int flags)
{
	if (flags & PDA_POWER_CHARGE_AC) {
		FUNC1("Charging from AC\n");
		FUNC0(EGPIO_MAGICIAN_NICD_CHARGE, 1);
	} else if (flags & PDA_POWER_CHARGE_USB) {
		FUNC1("Charging from USB\n");
		FUNC0(EGPIO_MAGICIAN_NICD_CHARGE, 1);
	} else {
		FUNC1("Charging disabled\n");
		FUNC0(EGPIO_MAGICIAN_NICD_CHARGE, 0);
	}
}