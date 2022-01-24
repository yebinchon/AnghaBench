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

/* Variables and functions */
 size_t NR_DTL_PAGE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 size_t dtl_nr_pages ; 
 struct page** dtl_page_store ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int) ; 

void FUNC6(void *addr)
{
	unsigned long pfn = FUNC0(FUNC2(addr));
	struct page *page = FUNC4(pfn);

	if (!FUNC3(page)) {
		dtl_page_store[dtl_nr_pages] = page;
		dtl_nr_pages++;
		FUNC1(dtl_nr_pages >= NR_DTL_PAGE);
		FUNC5(pfn, 1);
	}
}