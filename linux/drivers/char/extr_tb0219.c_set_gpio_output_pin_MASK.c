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
typedef  int uint16_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TB0219_GPIO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tb0219_lock ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC4(unsigned int pin, char command)
{
	unsigned long flags;
	uint16_t value;

	if (command != '0' && command != '1')
		return -EINVAL;

	FUNC0(&tb0219_lock, flags);
	value = FUNC2(TB0219_GPIO_OUTPUT);
	if (command == '0')
		value &= ~(1 << pin);
	else
		value |= 1 << pin;
	FUNC3(TB0219_GPIO_OUTPUT, value);
	FUNC1(&tb0219_lock, flags);

	return 0;

}