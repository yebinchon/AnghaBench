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
typedef  unsigned long* vulp ;

/* Variables and functions */
 scalar_t__ PYXIS_INT_REQ ; 
 unsigned long cached_irq_mask ; 
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void 
FUNC3(unsigned long vector)
{
	unsigned long pld;
	unsigned int i;

	/* Read the interrupt summary register of PYXIS */
	pld = *(vulp)PYXIS_INT_REQ;
	pld &= cached_irq_mask;

	/*
	 * Now for every possible bit set, work through them and call
	 * the appropriate interrupt handler.
	 */
	while (pld) {
		i = FUNC0(~pld);
		pld &= pld - 1; /* clear least bit set */
		if (i == 7)
			FUNC2(vector);
		else
			FUNC1(16+i);
	}
}