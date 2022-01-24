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
 int LINESIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 

void FUNC3(unsigned long start, unsigned long end)
{
	unsigned long lines = FUNC2(start, end-1);
	unsigned long i, flags;

	start &= ~(LINESIZE - 1);

	FUNC1(flags);

	for (i = 0; i < lines; i++) {
		__asm__ __volatile__ (
		"	dccleana(%0);	"
		:
		: "r" (start)
		);
		start += LINESIZE;
	}
	FUNC0(flags);
}