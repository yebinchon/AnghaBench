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
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_OUTPUT_OK ; 
 int /*<<< orphan*/  FUNC0 (struct orion_gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct orion_gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct orion_gpio_chip*,unsigned int,int) ; 
 struct orion_gpio_chip* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct orion_gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct gpio_chip *chip, unsigned pin, int value)
{
	struct orion_gpio_chip *ochip = FUNC3(chip);
	unsigned long flags;

	if (!FUNC4(ochip, pin, GPIO_OUTPUT_OK))
		return -EINVAL;

	FUNC5(&ochip->lock, flags);
	FUNC0(ochip, pin, 0);
	FUNC2(ochip, pin, value);
	FUNC1(ochip, pin, 0);
	FUNC6(&ochip->lock, flags);

	return 0;
}