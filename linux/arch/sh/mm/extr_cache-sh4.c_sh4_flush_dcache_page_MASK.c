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
struct page {int /*<<< orphan*/  flags; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 unsigned long CACHE_OC_ADDRESS_ARRAY ; 
 int /*<<< orphan*/  PG_dcache_clean ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 struct address_space* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 unsigned long shm_align_mask ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *arg)
{
	struct page *page = arg;
	unsigned long addr = (unsigned long)FUNC3(page);
#ifndef CONFIG_SMP
	struct address_space *mapping = FUNC4(page);

	if (mapping && !FUNC2(mapping))
		FUNC0(PG_dcache_clean, &page->flags);
	else
#endif
		FUNC1(CACHE_OC_ADDRESS_ARRAY |
				(addr & shm_align_mask), FUNC5(page));

	FUNC6();
}