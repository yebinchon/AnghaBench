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
 unsigned long CPU_FTR_LWSYNC ; 
 int /*<<< orphan*/  PPC_INST_LWSYNC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ ) ; 

void FUNC1(unsigned long value, void *fixup_start, void *fixup_end)
{
	long *start, *end;
	unsigned int *dest;

	if (!(value & CPU_FTR_LWSYNC))
		return ;

	start = fixup_start;
	end = fixup_end;

	for (; start < end; start++) {
		dest = (void *)start + *start;
		FUNC0(dest, PPC_INST_LWSYNC);
	}
}