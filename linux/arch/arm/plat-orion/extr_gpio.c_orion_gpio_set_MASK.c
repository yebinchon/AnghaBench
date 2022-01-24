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
struct orion_gpio_chip {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct orion_gpio_chip*,unsigned int,int) ; 
 struct orion_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned pin, int value)
{
	struct orion_gpio_chip *ochip = FUNC1(chip);
	unsigned long flags;

	FUNC2(&ochip->lock, flags);
	FUNC0(ochip, pin, value);
	FUNC3(&ochip->lock, flags);
}