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
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_OFFSET ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long TASK_SIZE ; 
 unsigned long _TLB_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(unsigned long start, unsigned long end)
{
	if (end > start && start >= TASK_SIZE && end <= PAGE_OFFSET &&
	    end - start < _TLB_ENTRIES << PAGE_SHIFT) {
		start &= PAGE_MASK;
		while (start < end) {
			FUNC1(start);
			FUNC0(start);
			start += PAGE_SIZE;
		}
	} else {
		FUNC2();
	}
}