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
typedef  unsigned long* vuip ;

/* Variables and functions */
 scalar_t__ GRU_INT_REQ ; 
 unsigned long GRU_INT_REQ_BITS ; 
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void
FUNC3(unsigned long vector)
{
	unsigned long pld;
	unsigned int i;

	/* Read the interrupt summary register of the GRU */
	pld = (*(vuip)GRU_INT_REQ) & GRU_INT_REQ_BITS;

	/*
	 * Now for every possible bit set, work through them and call
	 * the appropriate interrupt handler.
	 */
	while (pld) {
		i = FUNC0(~pld);
		pld &= pld - 1; /* clear least bit set */
		if (i == 31) {
			FUNC2(vector);
		} else {
			FUNC1(16 + i);
		}
	}
}