#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct gmap {TYPE_1__* mm; int /*<<< orphan*/  guest_to_host; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned long PMD_MASK ; 
 unsigned long PMD_SHIFT ; 
 unsigned long PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (TYPE_1__*,unsigned long) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,unsigned long,unsigned long) ; 

void FUNC7(struct gmap *gmap, unsigned long from, unsigned long to)
{
	unsigned long gaddr, vmaddr, size;
	struct vm_area_struct *vma;

	FUNC0(&gmap->mm->mmap_sem);
	for (gaddr = from; gaddr < to;
	     gaddr = (gaddr + PMD_SIZE) & PMD_MASK) {
		/* Find the vm address for the guest address */
		vmaddr = (unsigned long)
			FUNC4(&gmap->guest_to_host,
					  gaddr >> PMD_SHIFT);
		if (!vmaddr)
			continue;
		vmaddr |= gaddr & ~PMD_MASK;
		/* Find vma in the parent mm */
		vma = FUNC1(gmap->mm, vmaddr);
		if (!vma)
			continue;
		/*
		 * We do not discard pages that are backed by
		 * hugetlbfs, so we don't have to refault them.
		 */
		if (FUNC2(vma))
			continue;
		size = FUNC3(to - gaddr, PMD_SIZE - (gaddr & ~PMD_MASK));
		FUNC6(vma, vmaddr, size);
	}
	FUNC5(&gmap->mm->mmap_sem);
}