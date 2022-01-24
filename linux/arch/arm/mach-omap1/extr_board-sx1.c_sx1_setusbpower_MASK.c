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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  SOFIA_I2C_ADDR ; 
 int /*<<< orphan*/  SOFIA_POWER1_REG ; 
 scalar_t__ SOFIA_USB_POWER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC2(u8 onoff)
{
	int err;
	u8 dat = 0;
	err = FUNC0(SOFIA_I2C_ADDR, SOFIA_POWER1_REG, &dat);
	if (err < 0)
		return err;
	if (onoff)
		dat |= SOFIA_USB_POWER;
	else
		dat &= ~SOFIA_USB_POWER;
	return FUNC1(SOFIA_I2C_ADDR, SOFIA_POWER1_REG, dat);
}