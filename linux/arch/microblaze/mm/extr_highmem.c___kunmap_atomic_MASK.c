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
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  init_mm ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ kmap_pte ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,scalar_t__) ; 
 int FUNC8 () ; 

void FUNC9(void *kvaddr)
{
	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
	int type;
	unsigned int idx;

	if (vaddr < FUNC1(FIX_KMAP_END)) {
		FUNC5();
		FUNC6();
		return;
	}

	type = FUNC2();

	idx = type + KM_TYPE_NR * FUNC8();
#ifdef CONFIG_DEBUG_HIGHMEM
	BUG_ON(vaddr != __fix_to_virt(FIX_KMAP_BEGIN + idx));
#endif
	/*
	 * force other mappings to Oops if they'll try to access
	 * this pte without first remap it
	 */
	FUNC7(&init_mm, vaddr, kmap_pte-idx);
	FUNC4(NULL, vaddr);

	FUNC3();
	FUNC5();
	FUNC6();
}