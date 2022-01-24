#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* tsb_block; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_3__ {unsigned long tsb_nentries; scalar_t__ tsb; } ;

/* Variables and functions */
 size_t MM_TSB_BASE ; 
 size_t MM_TSB_HUGE ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int REAL_HPAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned int,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,unsigned int,unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 scalar_t__ cheetah_plus ; 
 scalar_t__ hypervisor ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ tlb_type ; 

void FUNC5(struct mm_struct *mm, unsigned long vaddr,
			 unsigned int hugepage_shift)
{
	unsigned long nentries, base, flags;

	FUNC3(&mm->context.lock, flags);

	if (hugepage_shift < REAL_HPAGE_SHIFT) {
		base = (unsigned long) mm->context.tsb_block[MM_TSB_BASE].tsb;
		nentries = mm->context.tsb_block[MM_TSB_BASE].tsb_nentries;
		if (tlb_type == cheetah_plus || tlb_type == hypervisor)
			base = FUNC2(base);
		if (hugepage_shift == PAGE_SHIFT)
			FUNC1(base, vaddr, PAGE_SHIFT,
					      nentries);
#if defined(CONFIG_HUGETLB_PAGE)
		else
			__flush_huge_tsb_one_entry(base, vaddr, PAGE_SHIFT,
						   nentries, hugepage_shift);
#endif
	}
#if defined(CONFIG_HUGETLB_PAGE) || defined(CONFIG_TRANSPARENT_HUGEPAGE)
	else if (mm->context.tsb_block[MM_TSB_HUGE].tsb) {
		base = (unsigned long) mm->context.tsb_block[MM_TSB_HUGE].tsb;
		nentries = mm->context.tsb_block[MM_TSB_HUGE].tsb_nentries;
		if (tlb_type == cheetah_plus || tlb_type == hypervisor)
			base = __pa(base);
		__flush_huge_tsb_one_entry(base, vaddr, REAL_HPAGE_SHIFT,
					   nentries, hugepage_shift);
	}
#endif
	FUNC4(&mm->context.lock, flags);
}