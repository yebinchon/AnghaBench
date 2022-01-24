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
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PG_dcache_clean ; 
 TYPE_2__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,unsigned long) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct vm_area_struct *vma, struct page *page,
			 unsigned long vaddr, void *dst, const void *src,
			 unsigned long len)
{
	if (boot_cpu_data.dcache.n_aliases && FUNC4(page) &&
	    FUNC5(PG_dcache_clean, &page->flags)) {
		void *vfrom = FUNC1(page, vaddr) + (vaddr & ~PAGE_MASK);
		FUNC3(dst, vfrom, len);
		FUNC2(vfrom);
	} else {
		FUNC3(dst, src, len);
		if (boot_cpu_data.dcache.n_aliases)
			FUNC0(PG_dcache_clean, &page->flags);
	}
}