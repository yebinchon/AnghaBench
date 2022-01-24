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
typedef  int u32 ;
struct orion_gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct orion_gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct orion_gpio_chip *ochip, unsigned pin, int input)
{
	u32 u;

	u = FUNC1(FUNC0(ochip));
	if (input)
		u |= 1 << pin;
	else
		u &= ~(1 << pin);
	FUNC2(u, FUNC0(ochip));
}