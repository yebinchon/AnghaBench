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
struct TYPE_4__ {int (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int,int,int) ;} ;
struct TYPE_3__ {unsigned int shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long,unsigned long,unsigned long,int,int) ; 
 unsigned long HPTES_PER_GROUP ; 
 unsigned long HPTE_R_N ; 
 int /*<<< orphan*/  HPTE_V_BOLTED ; 
 scalar_t__ MEMORY_START ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PHYSICAL_START ; 
 scalar_t__ FUNC2 () ; 
 unsigned long FUNC3 (unsigned long,int) ; 
 unsigned long FUNC4 (unsigned long,unsigned int,int) ; 
 unsigned long FUNC5 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC6 (unsigned long) ; 
 unsigned long htab_hash_mask ; 
 unsigned long linear_map_hash_count ; 
 int* linear_map_hash_slots ; 
 TYPE_2__ mmu_hash_ops ; 
 TYPE_1__* mmu_psize_defs ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int FUNC9 (unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int,int,int) ; 

int FUNC10(unsigned long vstart, unsigned long vend,
		      unsigned long pstart, unsigned long prot,
		      int psize, int ssize)
{
	unsigned long vaddr, paddr;
	unsigned int step, shift;
	int ret = 0;

	shift = mmu_psize_defs[psize].shift;
	step = 1 << shift;

	prot = FUNC6(prot);

	FUNC1("htab_bolt_mapping(%lx..%lx -> %lx (%lx,%d,%d)\n",
	    vstart, vend, pstart, prot, psize, ssize);

	for (vaddr = vstart, paddr = pstart; vaddr < vend;
	     vaddr += step, paddr += step) {
		unsigned long hash, hpteg;
		unsigned long vsid = FUNC3(vaddr, ssize);
		unsigned long vpn  = FUNC5(vaddr, vsid, ssize);
		unsigned long tprot = prot;

		/*
		 * If we hit a bad address return error.
		 */
		if (!vsid)
			return -1;
		/* Make kernel text executable */
		if (FUNC8(vaddr, vaddr + step))
			tprot &= ~HPTE_R_N;

		/*
		 * If relocatable, check if it overlaps interrupt vectors that
		 * are copied down to real 0. For relocatable kernel
		 * (e.g. kdump case) we copy interrupt vectors down to real
		 * address 0. Mark that region as executable. This is
		 * because on p8 system with relocation on exception feature
		 * enabled, exceptions are raised with MMU (IR=DR=1) ON. Hence
		 * in order to execute the interrupt handlers in virtual
		 * mode the vector region need to be marked as executable.
		 */
		if ((PHYSICAL_START > MEMORY_START) &&
			FUNC7(vaddr, vaddr + step))
				tprot &= ~HPTE_R_N;

		hash = FUNC4(vpn, shift, ssize);
		hpteg = ((hash & htab_hash_mask) * HPTES_PER_GROUP);

		FUNC0(!mmu_hash_ops.hpte_insert);
		ret = mmu_hash_ops.hpte_insert(hpteg, vpn, paddr, tprot,
					       HPTE_V_BOLTED, psize, psize,
					       ssize);

		if (ret < 0)
			break;

#ifdef CONFIG_DEBUG_PAGEALLOC
		if (debug_pagealloc_enabled() &&
			(paddr >> PAGE_SHIFT) < linear_map_hash_count)
			linear_map_hash_slots[paddr >> PAGE_SHIFT] = ret | 0x80;
#endif /* CONFIG_DEBUG_PAGEALLOC */
	}
	return ret < 0 ? ret : 0;
}