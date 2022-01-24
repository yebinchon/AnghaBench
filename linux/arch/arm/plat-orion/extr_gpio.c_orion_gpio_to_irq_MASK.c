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
struct orion_gpio_chip {unsigned int secondary_irq_base; int /*<<< orphan*/  domain; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct orion_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned pin)
{
	struct orion_gpio_chip *ochip = FUNC0(chip);

	return FUNC1(ochip->domain,
				  ochip->secondary_irq_base + pin);
}