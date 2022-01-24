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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(void)
{
	int pin;

	/* for each of the external interrupts (EINT0..EINT15) we
	 * need to check whether it is an external interrupt source,
	 * and then configure it as an input if it is not
	*/

	for (pin = FUNC0(0); pin <= FUNC0(7); pin++) {
		FUNC2(pin, pin - FUNC0(0));
	}

	for (pin = FUNC1(0); pin <= FUNC1(7); pin++) {
		FUNC2(pin, (pin - FUNC1(0))+8);
	}
}