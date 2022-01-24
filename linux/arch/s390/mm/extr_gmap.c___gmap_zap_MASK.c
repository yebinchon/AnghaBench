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
struct gmap {int /*<<< orphan*/  mm; int /*<<< orphan*/  guest_to_host; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long PMD_MASK ; 
 unsigned long PMD_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct gmap *gmap, unsigned long gaddr)
{
	unsigned long vmaddr;
	spinlock_t *ptl;
	pte_t *ptep;

	/* Find the vm address for the guest address */
	vmaddr = (unsigned long) FUNC4(&gmap->guest_to_host,
						   gaddr >> PMD_SHIFT);
	if (vmaddr) {
		vmaddr |= gaddr & ~PMD_MASK;
		/* Get pointer to the page table entry */
		ptep = FUNC0(gmap->mm, vmaddr, &ptl);
		if (FUNC1(ptep))
			FUNC3(gmap->mm, vmaddr, ptep, 0);
		FUNC2(ptep, ptl);
	}
}