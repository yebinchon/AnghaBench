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
struct page {int index; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 unsigned long FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (struct page*) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 void* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

void FUNC13(struct address_space *mapping, struct page *page)
{
	/*
	 * Writeback any data associated with the kernel mapping of this
	 * page.  This ensures that data in the physical page is mutually
	 * coherent with the kernels mapping.
	 */
	if (!FUNC0(page)) {
		FUNC1(FUNC10(page), FUNC11(page));
	} else {
		unsigned long i;
		if (FUNC3()) {
			for (i = 0; i < FUNC4(page); i++) {
				void *addr = FUNC6(page + i);
				FUNC1(addr, PAGE_SIZE);
				FUNC8(addr);
			}
		} else {
			for (i = 0; i < FUNC4(page); i++) {
				void *addr = FUNC7(page + i);
				if (addr) {
					FUNC1(addr, PAGE_SIZE);
					FUNC9(page + i);
				}
			}
		}
	}

	/*
	 * If this is a page cache page, and we have an aliasing VIPT cache,
	 * we only need to do one flush - which would be at the relevant
	 * userspace colour, which is congruent with page->index.
	 */
	if (mapping && FUNC2())
		FUNC5(FUNC12(page),
				page->index << PAGE_SHIFT);
}