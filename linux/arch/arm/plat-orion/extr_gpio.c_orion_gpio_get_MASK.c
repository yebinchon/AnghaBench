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
struct orion_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct orion_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct orion_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct orion_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct orion_gpio_chip*) ; 
 struct orion_gpio_chip* FUNC4 (struct gpio_chip*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned pin)
{
	struct orion_gpio_chip *ochip = FUNC4(chip);
	int val;

	if (FUNC5(FUNC2(ochip)) & (1 << pin)) {
		val = FUNC5(FUNC0(ochip)) ^ FUNC5(FUNC1(ochip));
	} else {
		val = FUNC5(FUNC3(ochip));
	}

	return (val >> pin) & 1;
}