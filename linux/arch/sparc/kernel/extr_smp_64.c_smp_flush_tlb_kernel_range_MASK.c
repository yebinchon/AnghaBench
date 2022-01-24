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
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  xcall_flush_tlb_kernel_range ; 

void FUNC3(unsigned long start, unsigned long end)
{
	start &= PAGE_MASK;
	end    = FUNC0(end);
	if (start != end) {
		FUNC2(&xcall_flush_tlb_kernel_range,
			       0, start, end);

		FUNC1(start, end);
	}
}