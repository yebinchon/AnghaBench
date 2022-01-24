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
 int /*<<< orphan*/  SOFIA_KEYLIGHT_REG ; 
 scalar_t__ SOFIA_MAX_LIGHT_VAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC1(u8 keylight)
{
	if (keylight > SOFIA_MAX_LIGHT_VAL)
		keylight = SOFIA_MAX_LIGHT_VAL;
	return FUNC0(SOFIA_I2C_ADDR, SOFIA_KEYLIGHT_REG, keylight);
}