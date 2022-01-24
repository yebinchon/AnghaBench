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
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  _PAGE_CACHE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 (struct page*) ; 

int FUNC5(struct page **pages, int numpages)
{
	int retval;
	unsigned long start;
	unsigned long end;
	int i;

	/* WB cache mode is hard wired to all cache attribute bits being 0 */
	retval = FUNC2(pages, numpages,
			FUNC1(_PAGE_CACHE_MASK));
	if (retval)
		return retval;

	for (i = 0; i < numpages; i++) {
		if (FUNC0(pages[i]))
			continue;
		start = FUNC4(pages[i]) << PAGE_SHIFT;
		end = start + PAGE_SIZE;
		FUNC3(start, end);
	}

	return 0;
}