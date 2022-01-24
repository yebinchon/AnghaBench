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
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

int FUNC5(int irq)
{
	/* return -2 for irqs without 1-1 mapping */
	if (irq >= FUNC0(0) && irq <= FUNC0(3))
		return -2;
	if (irq >= FUNC1(0) && irq <= FUNC1(3))
		return -2;

	if (FUNC2())
		return FUNC3(irq);
	else
		return FUNC4(irq);
}