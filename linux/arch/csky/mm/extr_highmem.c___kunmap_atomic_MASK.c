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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FIXADDR_START ; 
 scalar_t__ FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 unsigned long PAGE_MASK ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  init_mm ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ kmap_pte ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,scalar_t__) ; 
 int FUNC8 () ; 

void FUNC9(void *kvaddr)
{
	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
	int idx;

	if (vaddr < FIXADDR_START)
		goto out;

#ifdef CONFIG_DEBUG_HIGHMEM
	idx = KM_TYPE_NR*smp_processor_id() + kmap_atomic_idx();

	BUG_ON(vaddr != __fix_to_virt(FIX_KMAP_BEGIN + idx));

	pte_clear(&init_mm, vaddr, kmap_pte - idx);
	flush_tlb_one(vaddr);
#else
	(void) idx; /* to kill a warning */
#endif
	FUNC4();
out:
	FUNC5();
	FUNC6();
}