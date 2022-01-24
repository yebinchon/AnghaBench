#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {scalar_t__ vm_mm; } ;
struct TYPE_4__ {unsigned long pte_low; unsigned long pte_high; } ;
typedef  TYPE_1__ pte_t ;
struct TYPE_5__ {scalar_t__ active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_PTEA ; 
 int /*<<< orphan*/  MMU_PTEAEX ; 
 int /*<<< orphan*/  MMU_PTEH ; 
 int /*<<< orphan*/  MMU_PTEL ; 
 unsigned long MMU_VPN_MASK ; 
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ; 
 unsigned long _PAGE_WT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
	unsigned long flags, pteval, vpn;

	/*
	 * Handle debugger faulting in for debugee.
	 */
	if (vma && current->active_mm != vma->vm_mm)
		return;

	FUNC3(flags);

	/* Set PTEH register */
	vpn = address & MMU_VPN_MASK;
	FUNC0(vpn, MMU_PTEH);

	/* Set PTEAEX */
	FUNC0(FUNC1(), MMU_PTEAEX);

	pteval = pte.pte_low;

	/* Set PTEA register */
#ifdef CONFIG_X2TLB
	/*
	 * For the extended mode TLB this is trivial, only the ESZ and
	 * EPR bits need to be written out to PTEA, with the remainder of
	 * the protection bits (with the exception of the compat-mode SZ
	 * and PR bits, which are cleared) being written out in PTEL.
	 */
	__raw_writel(pte.pte_high, MMU_PTEA);
#endif

	/* Set PTEL register */
	pteval &= _PAGE_FLAGS_HARDWARE_MASK; /* drop software flags */
#ifdef CONFIG_CACHE_WRITETHROUGH
	pteval |= _PAGE_WT;
#endif
	/* conveniently, we want all the software flags to be 0 anyway */
	FUNC0(pteval, MMU_PTEL);

	/* Load the TLB */
	asm volatile("ldtlb": /* no output */ : /* no input */ : "memory");
	FUNC2(flags);
}