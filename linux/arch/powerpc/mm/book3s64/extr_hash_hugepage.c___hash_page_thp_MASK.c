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
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_4__ {int (* hpte_updatepp ) (unsigned long,unsigned long,unsigned long,unsigned int,int,int,unsigned long) ;unsigned long (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned int,int,int) ;int /*<<< orphan*/  (* hpte_remove ) (unsigned long) ;} ;
struct TYPE_3__ {unsigned long shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_FTR_COHERENT_ICACHE ; 
 unsigned long HPAGE_PMD_MASK ; 
 unsigned long HPTES_PER_GROUP ; 
 int /*<<< orphan*/  HPTE_V_SECONDARY ; 
 unsigned long H_PAGE_BUSY ; 
 unsigned long H_PAGE_COMBO ; 
 unsigned long H_PAGE_HASHPTE ; 
 unsigned long H_PAGE_THP_HUGE ; 
 int MMU_PAGE_16M ; 
 unsigned int MMU_PAGE_4K ; 
 int /*<<< orphan*/  MMU_PAGE_64K ; 
 unsigned long PAGE_SHIFT ; 
 unsigned int PTE_FRAG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long _PAGE_ACCESSED ; 
 unsigned long _PAGE_DEVMAP ; 
 unsigned long _PAGE_DIRTY ; 
 unsigned long _PAGE_WRITE ; 
 unsigned long _PTEIDX_GROUP_IX ; 
 unsigned long _PTEIDX_SECONDARY ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned long) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long,unsigned long,unsigned long,int,unsigned int,int,unsigned long) ; 
 unsigned long FUNC9 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC10 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC11 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC12 (unsigned char*,unsigned int) ; 
 unsigned int FUNC13 (unsigned char*,unsigned int) ; 
 unsigned long FUNC14 (unsigned long) ; 
 unsigned long htab_hash_mask ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC17 () ; 
 TYPE_2__ mmu_hash_ops ; 
 TYPE_1__* mmu_psize_defs ; 
 int /*<<< orphan*/  old_pte ; 
 unsigned long FUNC18 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int FUNC22 (unsigned long,unsigned long,unsigned long,unsigned int,int,int,unsigned long) ; 
 unsigned long FUNC23 (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 unsigned long FUNC24 (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (unsigned long) ; 
 scalar_t__ FUNC26 (int) ; 

int FUNC27(unsigned long ea, unsigned long access, unsigned long vsid,
		    pmd_t *pmdp, unsigned long trap, unsigned long flags,
		    int ssize, unsigned int psize)
{
	unsigned int index, valid;
	unsigned char *hpte_slot_array;
	unsigned long rflags, pa, hidx;
	unsigned long old_pmd, new_pmd;
	int ret, lpsize = MMU_PAGE_16M;
	unsigned long vpn, hash, shift, slot;

	/*
	 * atomically mark the linux large page PMD busy and dirty
	 */
	do {
		pmd_t pmd = FUNC1(*pmdp);

		old_pmd = FUNC19(pmd);
		/* If PMD busy, retry the access */
		if (FUNC26(old_pmd & H_PAGE_BUSY))
			return 0;
		/* If PMD permissions don't match, take page fault */
		if (FUNC26(!FUNC4(access, old_pmd)))
			return 1;
		/*
		 * Try to lock the PTE, add ACCESSED and DIRTY if it was
		 * a write access
		 */
		new_pmd = old_pmd | H_PAGE_BUSY | _PAGE_ACCESSED;
		if (access & _PAGE_WRITE)
			new_pmd |= _PAGE_DIRTY;
	} while (!FUNC20(pmdp, FUNC2(old_pmd), FUNC2(new_pmd)));

	/*
	 * Make sure this is thp or devmap entry
	 */
	if (!(old_pmd & (H_PAGE_THP_HUGE | _PAGE_DEVMAP)))
		return 0;

	rflags = FUNC14(new_pmd);

#if 0
	if (!cpu_has_feature(CPU_FTR_COHERENT_ICACHE)) {

		/*
		 * No CPU has hugepages but lacks no execute, so we
		 * don't need to worry about that case
		 */
		rflags = hash_page_do_lazy_icache(rflags, __pte(old_pte), trap);
	}
#endif
	/*
	 * Find the slot index details for this ea, using base page size.
	 */
	shift = mmu_psize_defs[psize].shift;
	index = (ea & ~HPAGE_PMD_MASK) >> shift;
	FUNC0(index >= PTE_FRAG_SIZE);

	vpn = FUNC11(ea, vsid, ssize);
	hpte_slot_array = FUNC7(pmdp);
	if (psize == MMU_PAGE_4K) {
		/*
		 * invalidate the old hpte entry if we have that mapped via 64K
		 * base page size. This is because demote_segment won't flush
		 * hash page table entries.
		 */
		if ((old_pmd & H_PAGE_HASHPTE) && !(old_pmd & H_PAGE_COMBO)) {
			FUNC6(vsid, ea, pmdp, MMU_PAGE_64K,
					    ssize, flags);
			/*
			 * With THP, we also clear the slot information with
			 * respect to all the 64K hash pte mapping the 16MB
			 * page. They are all invalid now. This make sure we
			 * don't find the slot valid when we fault with 4k
			 * base page size.
			 *
			 */
			FUNC16(hpte_slot_array, 0, PTE_FRAG_SIZE);
		}
	}

	valid = FUNC13(hpte_slot_array, index);
	if (valid) {
		/* update the hpte bits */
		hash = FUNC10(vpn, shift, ssize);
		hidx =  FUNC12(hpte_slot_array, index);
		if (hidx & _PTEIDX_SECONDARY)
			hash = ~hash;
		slot = (hash & htab_hash_mask) * HPTES_PER_GROUP;
		slot += hidx & _PTEIDX_GROUP_IX;

		ret = mmu_hash_ops.hpte_updatepp(slot, rflags, vpn,
						 psize, lpsize, ssize, flags);
		/*
		 * We failed to update, try to insert a new entry.
		 */
		if (ret == -1) {
			/*
			 * large pte is marked busy, so we can be sure
			 * nobody is looking at hpte_slot_array. hence we can
			 * safely update this here.
			 */
			valid = 0;
			hpte_slot_array[index] = 0;
		}
	}

	if (!valid) {
		unsigned long hpte_group;

		hash = FUNC10(vpn, shift, ssize);
		/* insert new entry */
		pa = FUNC18(FUNC2(old_pmd)) << PAGE_SHIFT;
		new_pmd |= H_PAGE_HASHPTE;

repeat:
		hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;

		/* Insert into the hash table, primary slot */
		slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa, rflags, 0,
						psize, lpsize, ssize);
		/*
		 * Primary is full, try the secondary
		 */
		if (FUNC26(slot == -1)) {
			hpte_group = (~hash & htab_hash_mask) * HPTES_PER_GROUP;
			slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa,
							rflags,
							HPTE_V_SECONDARY,
							psize, lpsize, ssize);
			if (slot == -1) {
				if (FUNC17() & 0x1)
					hpte_group = (hash & htab_hash_mask) *
							HPTES_PER_GROUP;

				mmu_hash_ops.hpte_remove(hpte_group);
				goto repeat;
			}
		}
		/*
		 * Hypervisor failure. Restore old pmd and return -1
		 * similar to __hash_page_*
		 */
		if (FUNC26(slot == -2)) {
			*pmdp = FUNC2(old_pmd);
			FUNC8(ea, access, vsid, trap, ssize,
					   psize, lpsize, old_pmd);
			return -1;
		}
		/*
		 * large pte is marked busy, so we can be sure
		 * nobody is looking at hpte_slot_array. hence we can
		 * safely update this here.
		 */
		FUNC15(hpte_slot_array, index, slot);
	}
	/*
	 * Mark the pte with H_PAGE_COMBO, if we are trying to hash it with
	 * base page size 4k.
	 */
	if (psize == MMU_PAGE_4K)
		new_pmd |= H_PAGE_COMBO;
	/*
	 * The hpte valid is stored in the pgtable whose address is in the
	 * second half of the PMD. Order this against clearing of the busy bit in
	 * huge pmd.
	 */
	FUNC21();
	*pmdp = FUNC2(new_pmd & ~H_PAGE_BUSY);
	return 0;
}