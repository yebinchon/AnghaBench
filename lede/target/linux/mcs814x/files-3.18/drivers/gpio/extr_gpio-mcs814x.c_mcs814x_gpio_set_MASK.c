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
struct mcs814x_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ GPIO_PIN ; 
 int FUNC0 (scalar_t__) ; 
 struct mcs814x_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip,
				unsigned offset, int value)
{
	struct mcs814x_gpio_chip *mcs814x = FUNC1(chip);
	u32 mask;

	mask = FUNC0(mcs814x->regs + GPIO_PIN);
	if (value)
		mask |= (1 << offset);
	else
		mask &= ~(1 << offset);
	FUNC2(mask, mcs814x->regs + GPIO_PIN);
}