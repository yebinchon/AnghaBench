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
 scalar_t__ FUNC0 (unsigned long long*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long PAGE_MASK ; 
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ; 
 unsigned long long* dtlb_entries ; 
 scalar_t__ dtlb_entry ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC8(struct vm_area_struct *vma, unsigned long addr, pte_t pte)
{
	unsigned long long entry;
	unsigned long paddr, flags;

	FUNC1(dtlb_entry == FUNC0(dtlb_entries));

	FUNC4(flags);

	entry = FUNC6();
	dtlb_entries[dtlb_entry++] = entry;

	paddr = FUNC5(pte) & _PAGE_FLAGS_HARDWARE_MASK;
	paddr &= ~PAGE_MASK;

	FUNC7(entry, addr, FUNC2(), paddr);

	FUNC3(flags);
}