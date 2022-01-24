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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 struct page* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct vm_area_struct *vma, unsigned long address,
		      pte_t *pte)
{
	unsigned long addr, pfn;
	struct page *page;

	pfn = FUNC6(*pte);
	if (FUNC7(!FUNC5(pfn)))
		return;

	page = FUNC4(pfn);
	if (page == FUNC0(0))
		return;

	addr = (unsigned long) FUNC2(page);

	FUNC1(addr, addr + PAGE_SIZE);

	FUNC3((void *) addr);
}