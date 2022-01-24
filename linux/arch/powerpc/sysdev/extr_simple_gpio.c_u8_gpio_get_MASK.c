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
struct of_mm_gpio_chip {int /*<<< orphan*/  regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct of_mm_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned int gpio)
{
	struct of_mm_gpio_chip *mm_gc = FUNC1(gc);

	return !!(FUNC0(mm_gc->regs) & FUNC2(gpio));
}