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

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 scalar_t__ cpu_has_dc_aliases ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 void* FUNC3 (struct page*) ; 
 void* FUNC4 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(struct page *to, struct page *from,
	unsigned long vaddr, struct vm_area_struct *vma)
{
	void *vfrom, *vto;

	vto = FUNC3(to);
	if (cpu_has_dc_aliases &&
	    FUNC7(from) && !FUNC0(from)) {
		vfrom = FUNC4(from, vaddr);
		FUNC1(vto, vfrom);
		FUNC6();
	} else {
		vfrom = FUNC3(from);
		FUNC1(vto, vfrom);
		FUNC5(vfrom);
	}
	if ((!cpu_has_ic_fills_f_dc) ||
	    FUNC8((unsigned long)vto, vaddr & PAGE_MASK))
		FUNC2((unsigned long)vto);
	FUNC5(vto);
	/* Make sure this page is cleared on other CPU's too before using it */
	FUNC9();
}