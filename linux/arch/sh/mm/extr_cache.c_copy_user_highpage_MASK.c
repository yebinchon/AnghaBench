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
struct vm_area_struct {int vm_flags; } ;
struct page {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PG_dcache_clean ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 TYPE_2__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 void* FUNC2 (struct page*) ; 
 void* FUNC3 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct page *to, struct page *from,
			unsigned long vaddr, struct vm_area_struct *vma)
{
	void *vfrom, *vto;

	vto = FUNC2(to);

	if (boot_cpu_data.dcache.n_aliases && FUNC6(from) &&
	    FUNC9(PG_dcache_clean, &from->flags)) {
		vfrom = FUNC3(from, vaddr);
		FUNC1(vto, vfrom);
		FUNC5(vfrom);
	} else {
		vfrom = FUNC2(from);
		FUNC1(vto, vfrom);
		FUNC4(vfrom);
	}

	if (FUNC7((unsigned long)vto, vaddr & PAGE_MASK) ||
	    (vma->vm_flags & VM_EXEC))
		FUNC0(vto, PAGE_SIZE);

	FUNC4(vto);
	/* Make sure this page is cleared on other CPU's too before using it */
	FUNC8();
}