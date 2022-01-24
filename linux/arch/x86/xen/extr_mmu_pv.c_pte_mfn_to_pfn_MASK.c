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
typedef  int pteval_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PTE_FLAGS_MASK ; 
 int XEN_PTE_MFN_MASK ; 
 int _PAGE_PRESENT ; 
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static pteval_t FUNC2(pteval_t val)
{
	if (val & _PAGE_PRESENT) {
		unsigned long mfn = (val & XEN_PTE_MFN_MASK) >> PAGE_SHIFT;
		unsigned long pfn = FUNC0(mfn);

		pteval_t flags = val & PTE_FLAGS_MASK;
		if (FUNC1(pfn == ~0))
			val = flags & ~_PAGE_PRESENT;
		else
			val = ((pteval_t)pfn << PAGE_SHIFT) | flags;
	}

	return val;
}