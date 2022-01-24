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
 scalar_t__ KSEG0 ; 
 unsigned long ST0_CM ; 
 unsigned long ST0_IEC ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

unsigned long FUNC2(unsigned long ca_flags)
{
	unsigned long flags, status, dummy, size;
	volatile unsigned long *p;

	p = (volatile unsigned long *) KSEG0;

	flags = FUNC0();

	/* isolate cache space */
	FUNC1((ca_flags|flags)&~ST0_IEC);

	*p = 0xa5a55a5a;
	dummy = *p;
	status = FUNC0();

	if (dummy != 0xa5a55a5a || (status & ST0_CM)) {
		size = 0;
	} else {
		for (size = 128; size <= 0x40000; size <<= 1)
			*(p + size) = 0;
		*p = -1;
		for (size = 128;
		     (size <= 0x40000) && (*(p + size) == 0);
		     size <<= 1)
			;
		if (size > 0x40000)
			size = 0;
	}

	FUNC1(flags);

	return size * sizeof(*p);
}