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
	unsigned long flags, status, lsize, i;
	volatile unsigned long *p;

	p = (volatile unsigned long *) KSEG0;

	flags = FUNC0();

	/* isolate cache space */
	FUNC1((ca_flags|flags)&~ST0_IEC);

	for (i = 0; i < 128; i++)
		*(p + i) = 0;
	*(volatile unsigned char *)p = 0;
	for (lsize = 1; lsize < 128; lsize <<= 1) {
		*(p + lsize);
		status = FUNC0();
		if (!(status & ST0_CM))
			break;
	}
	for (i = 0; i < 128; i += lsize)
		*(volatile unsigned char *)(p + i) = 0;

	FUNC1(flags);

	return lsize * sizeof(*p);
}