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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBC_BCTRL1_CLEAR_REG ; 
 int /*<<< orphan*/  PBC_BCTRL1_LCDON ; 
 int /*<<< orphan*/  PBC_BCTRL1_SET_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct gpio_chip *chip, unsigned offset, int value)
{
	if (value)
		FUNC0(PBC_BCTRL1_LCDON, PBC_BCTRL1_SET_REG);
	else
		FUNC0(PBC_BCTRL1_LCDON, PBC_BCTRL1_CLEAR_REG);
}