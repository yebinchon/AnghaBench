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
 int /*<<< orphan*/  KEYCTLR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  x3proto_gpio_lock ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned gpio)
{
	unsigned long flags;
	unsigned int data;

	FUNC2(&x3proto_gpio_lock, flags);
	data = FUNC0(KEYCTLR);
	data |= (1 << gpio);
	FUNC1(data, KEYCTLR);
	FUNC3(&x3proto_gpio_lock, flags);

	return 0;
}