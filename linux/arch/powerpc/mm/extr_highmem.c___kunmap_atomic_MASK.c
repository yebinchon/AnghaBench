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
 int /*<<< orphan*/  CONFIG_DEBUG_HIGHMEM ; 
 scalar_t__ FIX_KMAP_BEGIN ; 
 scalar_t__ FIX_KMAP_END ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int KM_TYPE_NR ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  init_mm ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ kmap_pte ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long,scalar_t__) ; 
 int FUNC9 () ; 

void FUNC10(void *kvaddr)
{
	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;

	if (vaddr < FUNC2(FIX_KMAP_END)) {
		FUNC6();
		FUNC7();
		return;
	}

	if (FUNC0(CONFIG_DEBUG_HIGHMEM)) {
		int type = FUNC3();
		unsigned int idx;

		idx = type + KM_TYPE_NR * FUNC9();
		FUNC1(vaddr != FUNC2(FIX_KMAP_BEGIN + idx));

		/*
		 * force other mappings to Oops if they'll try to access
		 * this pte without first remap it
		 */
		FUNC8(&init_mm, vaddr, kmap_pte-idx);
		FUNC5(NULL, vaddr);
	}

	FUNC4();
	FUNC6();
	FUNC7();
}