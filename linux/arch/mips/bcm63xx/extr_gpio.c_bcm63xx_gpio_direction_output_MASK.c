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
 int /*<<< orphan*/  BCM63XX_GPIO_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*,unsigned int,int) ; 
 int FUNC1 (struct gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip,
					 unsigned gpio, int value)
{
	FUNC0(chip, gpio, value);
	return FUNC1(chip, gpio, BCM63XX_GPIO_DIR_OUT);
}