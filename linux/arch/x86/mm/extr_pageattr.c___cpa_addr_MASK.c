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
struct cpa_data {int flags; unsigned long* vaddr; struct page** pages; } ;

/* Variables and functions */
 int CPA_ARRAY ; 
 int CPA_PAGES_ARRAY ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC3(struct cpa_data *cpa, unsigned long idx)
{
	if (cpa->flags & CPA_PAGES_ARRAY) {
		struct page *page = cpa->pages[idx];

		if (FUNC2(FUNC0(page)))
			return 0;

		return (unsigned long)FUNC1(page);
	}

	if (cpa->flags & CPA_ARRAY)
		return cpa->vaddr[idx];

	return *cpa->vaddr + idx * PAGE_SIZE;
}