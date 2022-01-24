#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int base; } ;
struct samsung_gpio_chip {TYPE_1__ chip; } ;
typedef  int /*<<< orphan*/  samsung_gpio_pull_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct samsung_gpio_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct samsung_gpio_chip*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct samsung_gpio_chip*,unsigned long) ; 
 struct samsung_gpio_chip* FUNC3 (unsigned int) ; 

int FUNC4(unsigned int pin, samsung_gpio_pull_t pull)
{
	struct samsung_gpio_chip *chip = FUNC3(pin);
	unsigned long flags;
	int offset, ret;

	if (!chip)
		return -EINVAL;

	offset = pin - chip->chip.base;

	FUNC1(chip, flags);
	ret = FUNC0(chip, offset, pull);
	FUNC2(chip, flags);

	return ret;
}