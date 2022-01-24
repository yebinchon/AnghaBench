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
struct cmm_page_array {size_t index; unsigned long* page; struct cmm_page_array* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  cmm_lock ; 
 struct cmm_page_array* cmm_page_list ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  loaned_pages ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static long FUNC7(long nr)
{
	struct cmm_page_array *pa;
	unsigned long addr;

	FUNC1("Begin free of %ld pages.\n", nr);
	FUNC4(&cmm_lock);
	pa = cmm_page_list;
	while (nr) {
		if (!pa || pa->index <= 0)
			break;
		addr = pa->page[--pa->index];

		if (pa->index == 0) {
			pa = pa->next;
			FUNC2((unsigned long) cmm_page_list);
			cmm_page_list = pa;
		}

		FUNC3(FUNC0(addr));
		FUNC2(addr);
		loaned_pages--;
		nr--;
		FUNC6();
	}
	FUNC5(&cmm_lock);
	FUNC1("End request with %ld pages unfulfilled\n", nr);
	return nr;
}