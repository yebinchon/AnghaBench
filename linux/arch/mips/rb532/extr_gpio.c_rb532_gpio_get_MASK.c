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
struct rb532_gpio_chip {scalar_t__ regbase; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ GPIOD ; 
 struct rb532_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct rb532_gpio_chip	*gpch;

	gpch = FUNC0(chip);
	return !!FUNC1(offset, gpch->regbase + GPIOD);
}