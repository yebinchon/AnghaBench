#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mm_struct {int dummy; } ;
struct flush_tlb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  loaded_mm; } ;

/* Variables and functions */
 unsigned long TLB_FLUSH_ALL ; 
 int /*<<< orphan*/  TLB_LOCAL_MM_SHOOTDOWN ; 
 TYPE_1__ cpu_tlbstate ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct flush_tlb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct flush_tlb_info*) ; 
 int FUNC3 () ; 
 struct flush_tlb_info* FUNC4 (struct mm_struct*,unsigned long,unsigned long,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*) ; 
 scalar_t__ nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct mm_struct* FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned long tlb_single_page_flush_ceiling ; 

void FUNC13(struct mm_struct *mm, unsigned long start,
				unsigned long end, unsigned int stride_shift,
				bool freed_tables)
{
	struct flush_tlb_info *info;
	u64 new_tlb_gen;
	int cpu;

	cpu = FUNC3();

	/* Should we flush just the requested range? */
	if ((end == TLB_FLUSH_ALL) ||
	    ((end - start) >> stride_shift) > tlb_single_page_flush_ceiling) {
		start = 0;
		end = TLB_FLUSH_ALL;
	}

	/* This is also a barrier that synchronizes with switch_mm(). */
	new_tlb_gen = FUNC5(mm);

	info = FUNC4(mm, start, end, stride_shift, freed_tables,
				  new_tlb_gen);

	if (mm == FUNC12(cpu_tlbstate.loaded_mm)) {
		FUNC8();
		FUNC6();
		FUNC1(info, TLB_LOCAL_MM_SHOOTDOWN);
		FUNC7();
	}

	if (FUNC0(FUNC9(mm), cpu) < nr_cpu_ids)
		FUNC2(FUNC9(mm), info);

	FUNC11();
	FUNC10();
}