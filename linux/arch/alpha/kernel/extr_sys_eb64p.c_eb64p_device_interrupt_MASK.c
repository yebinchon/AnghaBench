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
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void 
FUNC4(unsigned long vector)
{
	unsigned long pld;
	unsigned int i;

	/* Read the interrupt summary registers */
	pld = FUNC2(0x26) | (FUNC2(0x27) << 8);

	/*
	 * Now, for every possible bit set, work through
	 * them and call the appropriate interrupt handler.
	 */
	while (pld) {
		i = FUNC0(~pld);
		pld &= pld - 1;	/* clear least bit set */

		if (i == 5) {
			FUNC3(vector);
		} else {
			FUNC1(16 + i);
		}
	}
}