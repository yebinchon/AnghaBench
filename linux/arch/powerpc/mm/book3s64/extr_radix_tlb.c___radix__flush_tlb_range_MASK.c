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
struct TYPE_3__ {unsigned long id; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {unsigned int shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TRANSPARENT_HUGEPAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long MMU_NO_CONTEXT ; 
 size_t MMU_PAGE_1G ; 
 size_t MMU_PAGE_2M ; 
 unsigned long PMD_MASK ; 
 unsigned long PMD_SIZE ; 
 unsigned long PUD_MASK ; 
 unsigned long PUD_SIZE ; 
 int /*<<< orphan*/  RIC_FLUSH_ALL ; 
 int /*<<< orphan*/  RIC_FLUSH_TLB ; 
 unsigned long TLB_FLUSH_ALL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,unsigned long,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long,unsigned long,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,unsigned long,unsigned long,unsigned long,unsigned long,size_t,int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int FUNC9 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*) ; 
 scalar_t__ FUNC11 (struct mm_struct*) ; 
 TYPE_2__* mmu_psize_defs ; 
 size_t mmu_virtual_psize ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 unsigned long tlb_local_single_page_flush_ceiling ; 
 unsigned long tlb_single_page_flush_ceiling ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static inline void FUNC16(struct mm_struct *mm,
					unsigned long start, unsigned long end,
					bool flush_all_sizes)

{
	unsigned long pid;
	unsigned int page_shift = mmu_psize_defs[mmu_virtual_psize].shift;
	unsigned long page_size = 1UL << page_shift;
	unsigned long nr_pages = (end - start) >> page_shift;
	bool local, full;

	pid = mm->context.id;
	if (FUNC15(pid == MMU_NO_CONTEXT))
		return;

	FUNC12();
	FUNC14(); /* see radix__flush_tlb_mm */
	if (!FUNC10(mm)) {
		if (FUNC15(FUNC9(mm))) {
			if (end != TLB_FLUSH_ALL) {
				FUNC8(mm);
				goto is_local;
			}
		}
		local = false;
		full = (end == TLB_FLUSH_ALL ||
				nr_pages > tlb_single_page_flush_ceiling);
	} else {
is_local:
		local = true;
		full = (end == TLB_FLUSH_ALL ||
				nr_pages > tlb_local_single_page_flush_ceiling);
	}

	if (full) {
		if (local) {
			FUNC4(pid, RIC_FLUSH_TLB);
		} else {
			if (FUNC7()) {
				if (FUNC11(mm))
					FUNC3(pid, RIC_FLUSH_ALL);
				else
					FUNC3(pid, RIC_FLUSH_TLB);
			} else {
				FUNC5(mm, pid, RIC_FLUSH_TLB);
			}
		}
	} else {
		bool hflush = flush_all_sizes;
		bool gflush = flush_all_sizes;
		unsigned long hstart, hend;
		unsigned long gstart, gend;

		if (FUNC0(CONFIG_TRANSPARENT_HUGEPAGE))
			hflush = true;

		if (hflush) {
			hstart = (start + PMD_SIZE - 1) & PMD_MASK;
			hend = end & PMD_MASK;
			if (hstart == hend)
				hflush = false;
		}

		if (gflush) {
			gstart = (start + PUD_SIZE - 1) & PUD_MASK;
			gend = end & PUD_MASK;
			if (gstart == gend)
				gflush = false;
		}

		if (local) {
			asm volatile("ptesync": : :"memory");
			FUNC2(start, end, pid, page_size, mmu_virtual_psize);
			if (hflush)
				FUNC2(hstart, hend, pid,
						PMD_SIZE, MMU_PAGE_2M);
			if (gflush)
				FUNC2(gstart, gend, pid,
						PUD_SIZE, MMU_PAGE_1G);
			asm volatile("ptesync": : :"memory");
		} else if (FUNC7()) {
			asm volatile("ptesync": : :"memory");
			FUNC1(start, end, pid, page_size, mmu_virtual_psize);
			if (hflush)
				FUNC1(hstart, hend, pid,
						PMD_SIZE, MMU_PAGE_2M);
			if (gflush)
				FUNC1(gstart, gend, pid,
						PUD_SIZE, MMU_PAGE_1G);

			asm volatile("eieio; tlbsync; ptesync": : :"memory");
		} else {
			FUNC6(mm,
					start, end, pid, page_size, mmu_virtual_psize, false);
			if (hflush)
				FUNC6(mm,
					hstart, hend, pid, PMD_SIZE, MMU_PAGE_2M, false);
			if (gflush)
				FUNC6(mm,
					gstart, gend, pid, PUD_SIZE, MMU_PAGE_1G, false);
		}
	}
	FUNC13();
}