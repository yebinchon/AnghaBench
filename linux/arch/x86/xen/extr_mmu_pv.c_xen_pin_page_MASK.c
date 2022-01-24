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
struct page {int dummy; } ;
struct multicall_space {int /*<<< orphan*/  mc; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  enum pt_level { ____Placeholder_pt_level } pt_level ;

/* Variables and functions */
 int /*<<< orphan*/  MMUEXT_PIN_L1_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_KERNEL_RO ; 
 int PT_PGD ; 
 int PT_PTE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 unsigned int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  UVMF_TLB_FLUSH ; 
 struct multicall_space FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct page*) ; 
 unsigned long FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct page*,struct mm_struct*) ; 
 int /*<<< orphan*/  xen_pte_unlock ; 

__attribute__((used)) static int FUNC10(struct mm_struct *mm, struct page *page,
			enum pt_level level)
{
	unsigned pgfl = FUNC2(page);
	int flush;

	if (pgfl)
		flush = 0;		/* already pinned */
	else if (FUNC1(page))
		/* kmaps need flushing if we found an unpinned
		   highpage */
		flush = 1;
	else {
		void *pt = FUNC4(page);
		unsigned long pfn = FUNC5(page);
		struct multicall_space mcs = FUNC3(0);
		spinlock_t *ptl;

		flush = 0;

		/*
		 * We need to hold the pagetable lock between the time
		 * we make the pagetable RO and when we actually pin
		 * it.  If we don't, then other users may come in and
		 * attempt to update the pagetable by writing it,
		 * which will fail because the memory is RO but not
		 * pinned, so Xen won't do the trap'n'emulate.
		 *
		 * If we're using split pte locks, we can't hold the
		 * entire pagetable's worth of locks during the
		 * traverse, because we may wrap the preempt count (8
		 * bits).  The solution is to mark RO and pin each PTE
		 * page while holding the lock.  This means the number
		 * of locks we end up holding is never more than a
		 * batch size (~32 entries, at present).
		 *
		 * If we're not using split pte locks, we needn't pin
		 * the PTE pages independently, because we're
		 * protected by the overall pagetable lock.
		 */
		ptl = NULL;
		if (level == PT_PTE)
			ptl = FUNC9(page, mm);

		FUNC0(mcs.mc, (unsigned long)pt,
					FUNC6(pfn, PAGE_KERNEL_RO),
					level == PT_PGD ? UVMF_TLB_FLUSH : 0);

		if (ptl) {
			FUNC7(MMUEXT_PIN_L1_TABLE, pfn);

			/* Queue a deferred unlock for when this batch
			   is completed. */
			FUNC8(xen_pte_unlock, ptl);
		}
	}

	return flush;
}