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
 unsigned int NMI_MAX_COUNTER_BITS ; 
 int /*<<< orphan*/  evntsel_nmi_owner ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC2(unsigned int msr)
{
	unsigned int counter;

	counter = FUNC0(msr);
	/* register not managed by the allocator? */
	if (counter > NMI_MAX_COUNTER_BITS)
		return 1;

	if (!FUNC1(counter, evntsel_nmi_owner))
		return 1;
	return 0;
}