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
 int PAGE_SHIFT ; 
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline unsigned long FUNC4(unsigned long pa, unsigned long prev_va)
{
#ifdef CONFIG_HIGHMEM
	unsigned long va = prev_va & PAGE_MASK;
	unsigned long pa_offset = pa << (32 - PAGE_SHIFT);
	if (unlikely(pa_offset < (prev_va << (32 - PAGE_SHIFT)))) {
		/*
		 * Switching to a new page.  Because cache ops are
		 * using virtual addresses only, we must put a mapping
		 * in place for it.
		 */
		l2_unmap_va(prev_va);
		va = (unsigned long)kmap_atomic_pfn(pa >> PAGE_SHIFT);
	}
	return va + (pa_offset >> (32 - PAGE_SHIFT));
#else
	return FUNC0(pa);
#endif
}