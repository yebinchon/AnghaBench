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
 unsigned long FUNC0 (int) ; 
 unsigned long FIXMAP_BASE ; 
 unsigned long FIXMAP_SIZE ; 
 int KM_TYPE_NR ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ fixmap_page_table ; 
 int /*<<< orphan*/  init_mm ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,scalar_t__) ; 
 int FUNC8 () ; 

void FUNC9(void *kv)
{
	unsigned long kvaddr = (unsigned long)kv;

	if (kvaddr >= FIXMAP_BASE && kvaddr < (FIXMAP_BASE + FIXMAP_SIZE)) {

		/*
		 * Because preemption is disabled, this vaddr can be associated
		 * with the current allocated index.
		 * But in case of multiple live kmap_atomic(), it still relies on
		 * callers to unmap in right order.
		 */
		int cpu_idx = FUNC2();
		int idx = cpu_idx + KM_TYPE_NR * FUNC8();

		FUNC1(kvaddr != FUNC0(idx));

		FUNC7(&init_mm, kvaddr, fixmap_page_table + idx);
		FUNC4(kvaddr, kvaddr + PAGE_SIZE);

		FUNC3();
	}

	FUNC5();
	FUNC6();
}