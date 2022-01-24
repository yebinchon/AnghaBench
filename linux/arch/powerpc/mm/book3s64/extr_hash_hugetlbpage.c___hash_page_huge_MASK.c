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
typedef  int /*<<< orphan*/  real_pte_t ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_4__ {int (* hpte_updatepp ) (unsigned long,unsigned long,unsigned long,unsigned int,unsigned int,int,unsigned long) ;} ;
struct TYPE_3__ {unsigned int shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_FTR_COHERENT_ICACHE ; 
 unsigned long H_PAGE_BUSY ; 
 unsigned long H_PAGE_HASHPTE ; 
 unsigned long H_PAGE_THP_HUGE ; 
 unsigned int MMU_PAGE_16G ; 
 unsigned long PAGE_SHIFT ; 
 long PTRS_PER_PMD ; 
 long PTRS_PER_PUD ; 
 unsigned long _PAGE_ACCESSED ; 
 unsigned long _PAGE_DEVMAP ; 
 unsigned long _PAGE_DIRTY ; 
 unsigned long _PAGE_HPTEFLAGS ; 
 unsigned long _PAGE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long,unsigned long,unsigned long,int,unsigned int,unsigned int,unsigned long) ; 
 unsigned long FUNC6 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC7 (unsigned long,unsigned int,int) ; 
 unsigned long FUNC8 (unsigned long,unsigned long,int) ; 
 long FUNC9 (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned long FUNC10 (unsigned long) ; 
 scalar_t__ FUNC11 (int) ; 
 TYPE_2__ mmu_hash_ops ; 
 TYPE_1__* mmu_psize_defs ; 
 unsigned long FUNC12 (unsigned long,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,long) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (unsigned long,unsigned long,unsigned long,unsigned int,unsigned int,int,unsigned long) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(unsigned long ea, unsigned long access, unsigned long vsid,
		     pte_t *ptep, unsigned long trap, unsigned long flags,
		     int ssize, unsigned int shift, unsigned int mmu_psize)
{
	real_pte_t rpte;
	unsigned long vpn;
	unsigned long old_pte, new_pte;
	unsigned long rflags, pa;
	long slot, offset;

	FUNC0(shift != mmu_psize_defs[mmu_psize].shift);

	/* Search the Linux page table for a match with va */
	vpn = FUNC8(ea, vsid, ssize);

	/*
	 * At this point, we have a pte (old_pte) which can be used to build
	 * or update an HPTE. There are 2 cases:
	 *
	 * 1. There is a valid (present) pte with no associated HPTE (this is
	 *	the most common case)
	 * 2. There is a valid (present) pte with an associated HPTE. The
	 *	current values of the pp bits in the HPTE prevent access
	 *	because we are doing software DIRTY bit management and the
	 *	page is currently not DIRTY.
	 */


	do {
		old_pte = FUNC15(*ptep);
		/* If PTE busy, retry the access */
		if (FUNC18(old_pte & H_PAGE_BUSY))
			return 0;
		/* If PTE permissions don't match, take page fault */
		if (FUNC18(!FUNC3(access, old_pte)))
			return 1;

		/*
		 * Try to lock the PTE, add ACCESSED and DIRTY if it was
		 * a write access
		 */
		new_pte = old_pte | H_PAGE_BUSY | _PAGE_ACCESSED;
		if (access & _PAGE_WRITE)
			new_pte |= _PAGE_DIRTY;
	} while(!FUNC16(ptep, FUNC1(old_pte), FUNC1(new_pte)));

	/* Make sure this is a hugetlb entry */
	if (old_pte & (H_PAGE_THP_HUGE | _PAGE_DEVMAP))
		return 0;

	rflags = FUNC10(new_pte);
	if (FUNC18(mmu_psize == MMU_PAGE_16G))
		offset = PTRS_PER_PUD;
	else
		offset = PTRS_PER_PMD;
	rpte = FUNC2(FUNC1(old_pte), ptep, offset);

	if (!FUNC4(CPU_FTR_COHERENT_ICACHE))
		/*
		 * No CPU has hugepages but lacks no execute, so we
		 * don't need to worry about that case
		 */
		rflags = FUNC6(rflags, FUNC1(old_pte), trap);

	/* Check if pte already has an hpte (case 2) */
	if (FUNC18(old_pte & H_PAGE_HASHPTE)) {
		/* There MIGHT be an HPTE for this pte */
		unsigned long gslot;

		gslot = FUNC12(vpn, shift, ssize, rpte, 0);
		if (mmu_hash_ops.hpte_updatepp(gslot, rflags, vpn, mmu_psize,
					       mmu_psize, ssize, flags) == -1)
			old_pte &= ~_PAGE_HPTEFLAGS;
	}

	if (FUNC11(!(old_pte & H_PAGE_HASHPTE))) {
		unsigned long hash = FUNC7(vpn, shift, ssize);

		pa = FUNC13(FUNC1(old_pte)) << PAGE_SHIFT;

		/* clear HPTE slot informations in new PTE */
		new_pte = (new_pte & ~_PAGE_HPTEFLAGS) | H_PAGE_HASHPTE;

		slot = FUNC9(hash, vpn, pa, rflags, 0,
					     mmu_psize, ssize);

		/*
		 * Hypervisor failure. Restore old pte and return -1
		 * similar to __hash_page_*
		 */
		if (FUNC18(slot == -2)) {
			*ptep = FUNC1(old_pte);
			FUNC5(ea, access, vsid, trap, ssize,
					   mmu_psize, mmu_psize, old_pte);
			return -1;
		}

		new_pte |= FUNC14(ptep, rpte, 0, slot, offset);
	}

	/*
	 * No need to use ldarx/stdcx here
	 */
	*ptep = FUNC1(new_pte & ~H_PAGE_BUSY);
	return 0;
}