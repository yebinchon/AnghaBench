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
struct mcu {int reg_ctrl; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_REG_CTRL ; 
 struct mcu* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *gc, unsigned int gpio, int val)
{
	struct mcu *mcu = FUNC0(gc);
	u8 bit = 1 << (4 + gpio);

	FUNC2(&mcu->lock);
	if (val)
		mcu->reg_ctrl &= ~bit;
	else
		mcu->reg_ctrl |= bit;

	FUNC1(mcu->client, MCU_REG_CTRL, mcu->reg_ctrl);
	FUNC3(&mcu->lock);
}