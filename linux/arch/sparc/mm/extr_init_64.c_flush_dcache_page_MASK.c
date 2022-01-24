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
 int /*<<< orphan*/  PG_dcache_dirty ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 () ; 
 scalar_t__ hypervisor ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*) ; 
 struct address_space* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ tlb_type ; 

void FUNC10(struct page *page)
{
	struct address_space *mapping;
	int this_cpu;

	if (tlb_type == hypervisor)
		return;

	/* Do not bother with the expensive D-cache flush if it
	 * is merely the zero page.  The 'bigcore' testcase in GDB
	 * causes this case to run millions of times.
	 */
	if (page == FUNC0(0))
		return;

	this_cpu = FUNC3();

	mapping = FUNC5(page);
	if (mapping && !FUNC4(mapping)) {
		int dirty = FUNC9(PG_dcache_dirty, &page->flags);
		if (dirty) {
			int dirty_cpu = FUNC1(page);

			if (dirty_cpu == this_cpu)
				goto out;
			FUNC8(page, dirty_cpu);
		}
		FUNC7(page, this_cpu);
	} else {
		/* We could delay the flush for the !page_mapping
		 * case too.  But that case is for exec env/arg
		 * pages and those are %99 certainly going to get
		 * faulted into the tlb (and thus flushed) anyways.
		 */
		FUNC2(page);
	}

out:
	FUNC6();
}