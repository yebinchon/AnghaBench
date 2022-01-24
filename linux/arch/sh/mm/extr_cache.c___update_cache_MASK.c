#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct page {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_3__ {int /*<<< orphan*/  n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PG_dcache_clean ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct vm_area_struct *vma,
		    unsigned long address, pte_t pte)
{
	struct page *page;
	unsigned long pfn = FUNC4(pte);

	if (!boot_cpu_data.dcache.n_aliases)
		return;

	page = FUNC2(pfn);
	if (FUNC3(pfn)) {
		int dirty = !FUNC5(PG_dcache_clean, &page->flags);
		if (dirty)
			FUNC0(FUNC1(page), PAGE_SIZE);
	}
}