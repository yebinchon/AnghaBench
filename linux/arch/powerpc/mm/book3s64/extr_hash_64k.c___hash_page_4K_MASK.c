#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  hidx; } ;
typedef  TYPE_1__ real_pte_t ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_11__ {int (* hpte_updatepp ) (unsigned long,unsigned long,unsigned long,size_t,size_t,int,unsigned long) ;unsigned long (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,size_t,size_t,int) ;int /*<<< orphan*/  (* hpte_remove ) (unsigned long) ;int /*<<< orphan*/  (* hpte_invalidate ) (unsigned long,unsigned long,size_t,size_t,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {unsigned long shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_COHERENT_ICACHE ; 
 int /*<<< orphan*/  CPU_FTR_NOEXECUTE ; 
 unsigned long HPTES_PER_GROUP ; 
 int /*<<< orphan*/  HPTE_V_SECONDARY ; 
 unsigned long HW_PAGE_SHIFT ; 
 unsigned long H_PAGE_4K_PFN ; 
 unsigned long H_PAGE_BUSY ; 
 unsigned long H_PAGE_COMBO ; 
 unsigned long H_PAGE_HASHPTE ; 
 int /*<<< orphan*/  INVALID_RPTE_HIDX ; 
 size_t MMU_PAGE_4K ; 
 int /*<<< orphan*/  MMU_PAGE_64K ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PTRS_PER_PTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long _PAGE_ACCESSED ; 
 unsigned long _PAGE_DIRTY ; 
 unsigned long _PAGE_WRITE ; 
 unsigned long _PTEIDX_GROUP_IX ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,TYPE_1__,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long,unsigned long,unsigned long,int,size_t,size_t,unsigned long) ; 
 unsigned long FUNC8 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC9 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC10 (unsigned long,unsigned long,int) ; 
 int FUNC11 (unsigned long) ; 
 unsigned long FUNC12 (unsigned long) ; 
 unsigned long htab_hash_mask ; 
 int FUNC13 () ; 
 TYPE_5__ mmu_hash_ops ; 
 TYPE_4__* mmu_psize_defs ; 
 unsigned long FUNC14 (unsigned long,unsigned long,int,TYPE_1__,unsigned int) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ *,TYPE_1__,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (unsigned long,unsigned long,unsigned long,size_t,size_t,int,unsigned long) ; 
 unsigned long FUNC20 (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,size_t,size_t,int) ; 
 unsigned long FUNC21 (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned long,unsigned long,size_t,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (unsigned long) ; 
 scalar_t__ FUNC24 (int) ; 

int FUNC25(unsigned long ea, unsigned long access, unsigned long vsid,
		   pte_t *ptep, unsigned long trap, unsigned long flags,
		   int ssize, int subpg_prot)
{
	real_pte_t rpte;
	unsigned long hpte_group;
	unsigned int subpg_index;
	unsigned long rflags, pa;
	unsigned long old_pte, new_pte, subpg_pte;
	unsigned long vpn, hash, slot, gslot;
	unsigned long shift = mmu_psize_defs[MMU_PAGE_4K].shift;

	/*
	 * atomically mark the linux large page PTE busy and dirty
	 */
	do {
		pte_t pte = FUNC0(*ptep);

		old_pte = FUNC17(pte);
		/* If PTE busy, retry the access */
		if (FUNC24(old_pte & H_PAGE_BUSY))
			return 0;
		/* If PTE permissions don't match, take page fault */
		if (FUNC24(!FUNC4(access, old_pte)))
			return 1;
		/*
		 * Try to lock the PTE, add ACCESSED and DIRTY if it was
		 * a write access. Since this is 4K insert of 64K page size
		 * also add H_PAGE_COMBO
		 */
		new_pte = old_pte | H_PAGE_BUSY | _PAGE_ACCESSED | H_PAGE_COMBO;
		if (access & _PAGE_WRITE)
			new_pte |= _PAGE_DIRTY;
	} while (!FUNC18(ptep, FUNC1(old_pte), FUNC1(new_pte)));

	/*
	 * Handle the subpage protection bits
	 */
	subpg_pte = new_pte & ~subpg_prot;
	rflags = FUNC12(subpg_pte);

	if (FUNC5(CPU_FTR_NOEXECUTE) &&
	    !FUNC5(CPU_FTR_COHERENT_ICACHE)) {

		/*
		 * No CPU has hugepages but lacks no execute, so we
		 * don't need to worry about that case
		 */
		rflags = FUNC8(rflags, FUNC1(old_pte), trap);
	}

	subpg_index = (ea & (PAGE_SIZE - 1)) >> shift;
	vpn  = FUNC10(ea, vsid, ssize);
	rpte = FUNC2(FUNC1(old_pte), ptep, PTRS_PER_PTE);
	/*
	 *None of the sub 4k page is hashed
	 */
	if (!(old_pte & H_PAGE_HASHPTE))
		goto htab_insert_hpte;
	/*
	 * Check if the pte was already inserted into the hash table
	 * as a 64k HW page, and invalidate the 64k HPTE if so.
	 */
	if (!(old_pte & H_PAGE_COMBO)) {
		FUNC6(vpn, rpte, MMU_PAGE_64K, ssize, flags);
		/*
		 * clear the old slot details from the old and new pte.
		 * On hash insert failure we use old pte value and we don't
		 * want slot information there if we have a insert failure.
		 */
		old_pte &= ~H_PAGE_HASHPTE;
		new_pte &= ~H_PAGE_HASHPTE;
		goto htab_insert_hpte;
	}
	/*
	 * Check for sub page valid and update
	 */
	if (FUNC3(rpte, subpg_index)) {
		int ret;

		gslot = FUNC14(vpn, shift, ssize, rpte,
					   subpg_index);
		ret = mmu_hash_ops.hpte_updatepp(gslot, rflags, vpn,
						 MMU_PAGE_4K, MMU_PAGE_4K,
						 ssize, flags);

		/*
		 * If we failed because typically the HPTE wasn't really here
		 * we try an insertion.
		 */
		if (ret == -1)
			goto htab_insert_hpte;

		*ptep = FUNC1(new_pte & ~H_PAGE_BUSY);
		return 0;
	}

htab_insert_hpte:

	/*
	 * Initialize all hidx entries to invalid value, the first time
	 * the PTE is about to allocate a 4K HPTE.
	 */
	if (!(old_pte & H_PAGE_COMBO))
		rpte.hidx = INVALID_RPTE_HIDX;

	/*
	 * handle H_PAGE_4K_PFN case
	 */
	if (old_pte & H_PAGE_4K_PFN) {
		/*
		 * All the sub 4k page have the same
		 * physical address.
		 */
		pa = FUNC15(FUNC1(old_pte)) << HW_PAGE_SHIFT;
	} else {
		pa = FUNC15(FUNC1(old_pte)) << PAGE_SHIFT;
		pa += (subpg_index << shift);
	}
	hash = FUNC9(vpn, shift, ssize);
repeat:
	hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;

	/* Insert into the hash table, primary slot */
	slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa, rflags, 0,
					MMU_PAGE_4K, MMU_PAGE_4K, ssize);
	/*
	 * Primary is full, try the secondary
	 */
	if (FUNC24(slot == -1)) {
		bool soft_invalid;

		hpte_group = (~hash & htab_hash_mask) * HPTES_PER_GROUP;
		slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa,
						rflags, HPTE_V_SECONDARY,
						MMU_PAGE_4K, MMU_PAGE_4K,
						ssize);

		soft_invalid = FUNC11(slot);
		if (FUNC24(soft_invalid)) {
			/*
			 * We got a valid slot from a hardware point of view.
			 * but we cannot use it, because we use this special
			 * value; as defined by hpte_soft_invalid(), to track
			 * invalid slots. We cannot use it. So invalidate it.
			 */
			gslot = slot & _PTEIDX_GROUP_IX;
			mmu_hash_ops.hpte_invalidate(hpte_group + gslot, vpn,
						     MMU_PAGE_4K, MMU_PAGE_4K,
						     ssize, 0);
		}

		if (FUNC24(slot == -1 || soft_invalid)) {
			/*
			 * For soft invalid slot, let's ensure that we release a
			 * slot from the primary, with the hope that we will
			 * acquire that slot next time we try. This will ensure
			 * that we do not get the same soft-invalid slot.
			 */
			if (soft_invalid || (FUNC13() & 0x1))
				hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;

			mmu_hash_ops.hpte_remove(hpte_group);
			/*
			 * FIXME!! Should be try the group from which we removed ?
			 */
			goto repeat;
		}
	}
	/*
	 * Hypervisor failure. Restore old pte and return -1
	 * similar to __hash_page_*
	 */
	if (FUNC24(slot == -2)) {
		*ptep = FUNC1(old_pte);
		FUNC7(ea, access, vsid, trap, ssize,
				   MMU_PAGE_4K, MMU_PAGE_4K, old_pte);
		return -1;
	}

	new_pte |= FUNC16(ptep, rpte, subpg_index, slot, PTRS_PER_PTE);
	new_pte |= H_PAGE_HASHPTE;

	*ptep = FUNC1(new_pte & ~H_PAGE_BUSY);
	return 0;
}