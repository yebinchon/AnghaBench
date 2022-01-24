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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MMUCR ; 
 unsigned long MMUCR_URB ; 
 int MMUCR_URB_NENTRIES ; 
 unsigned long MMUCR_URB_SHIFT ; 
 unsigned long MMUCR_URC ; 
 int MMUCR_URC_SHIFT ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

void FUNC7(struct vm_area_struct *vma, unsigned long addr, pte_t pte)
{
	unsigned long status, flags;
	int urb;

	FUNC6(flags);

	status = FUNC1(MMUCR);
	urb = (status & MMUCR_URB) >> MMUCR_URB_SHIFT;
	status &= ~MMUCR_URC;

	/*
	 * Make sure we're not trying to wire the last TLB entry slot.
	 */
	FUNC0(!--urb);

	urb = urb % MMUCR_URB_NENTRIES;

	/*
	 * Insert this entry into the highest non-wired TLB slot (via
	 * the URC field).
	 */
	status |= (urb << MMUCR_URC_SHIFT);
	FUNC2(status, MMUCR);
	FUNC4();

	/* Load the entry into the TLB */
	FUNC3(vma, addr, pte);

	/* ... and wire it up. */
	status = FUNC1(MMUCR);

	status &= ~MMUCR_URB;
	status |= (urb << MMUCR_URB_SHIFT);

	FUNC2(status, MMUCR);
	FUNC4();

	FUNC5(flags);
}