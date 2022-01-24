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

/* Variables and functions */
 int /*<<< orphan*/  AUXIO_POWER_OFF ; 
 scalar_t__ auxio_power_register ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  of_console_device ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ scons_pwroff ; 

void FUNC4(void)
{
	if (auxio_power_register &&
	    (!FUNC1(of_console_device, "serial") || scons_pwroff)) {
		u8 power_register = FUNC2(auxio_power_register);
		power_register |= AUXIO_POWER_OFF;
		FUNC3(power_register, auxio_power_register);
	}

	FUNC0();
}