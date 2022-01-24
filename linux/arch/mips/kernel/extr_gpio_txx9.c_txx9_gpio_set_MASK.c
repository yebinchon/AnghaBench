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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  txx9_gpio_lock ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned int offset,
			  int value)
{
	unsigned long flags;
	FUNC1(&txx9_gpio_lock, flags);
	FUNC3(offset, value);
	FUNC0();
	FUNC2(&txx9_gpio_lock, flags);
}