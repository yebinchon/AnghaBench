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
 scalar_t__ FIX_KMAP_BEGIN ; 
 scalar_t__ FIX_KMAP_END ; 
 int KM_TYPE_NR ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ high_memory ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ kmap_pte ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 

void FUNC10(void *kvaddr)
{
	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;

	if (vaddr >= FUNC2(FIX_KMAP_END) &&
	    vaddr <= FUNC2(FIX_KMAP_BEGIN)) {
		int idx, type;

		type = FUNC4();
		idx = type + KM_TYPE_NR * FUNC9();

#ifdef CONFIG_DEBUG_HIGHMEM
		WARN_ON_ONCE(vaddr != __fix_to_virt(FIX_KMAP_BEGIN + idx));
#endif
		/*
		 * Force other mappings to Oops if they'll try to access this
		 * pte without first remap it.  Keeping stale mappings around
		 * is a bad idea also, in case the page changes cacheability
		 * attributes or becomes a protected page in a hypervisor.
		 */
		FUNC6(kmap_pte-idx, vaddr);
		FUNC5();
		FUNC3();
	}
#ifdef CONFIG_DEBUG_HIGHMEM
	else {
		BUG_ON(vaddr < PAGE_OFFSET);
		BUG_ON(vaddr >= (unsigned long)high_memory);
	}
#endif

	FUNC7();
	FUNC8();
}