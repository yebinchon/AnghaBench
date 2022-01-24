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
typedef  int /*<<< orphan*/  u32 ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_BIT_DIR ; 
 int /*<<< orphan*/ * gpio_addr ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5 (struct gpio_chip *chip, unsigned offset,
		int value)
{
	u32 val;

	FUNC3 (&gpio_lock);

	val = FUNC1 (gpio_addr[offset]);
	val |= FUNC0(GPIO_BIT_DIR);
	FUNC2 (val, gpio_addr[offset]);

	FUNC4 (&gpio_lock);

	return 0;
}