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
struct TYPE_2__ {long (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int,int,int) ;int /*<<< orphan*/  (* hpte_remove ) (unsigned long) ;} ;

/* Variables and functions */
 unsigned long HPTES_PER_GROUP ; 
 unsigned long HPTE_V_SECONDARY ; 
 unsigned long htab_hash_mask ; 
 int FUNC0 () ; 
 TYPE_1__ mmu_hash_ops ; 
 long FUNC1 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int,int,int) ; 
 long FUNC2 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

long FUNC5(unsigned long hash, unsigned long vpn,
			   unsigned long pa, unsigned long rflags,
			   unsigned long vflags, int psize, int ssize)
{
	unsigned long hpte_group;
	long slot;

repeat:
	hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;

	/* Insert into the hash table, primary slot */
	slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa, rflags, vflags,
					psize, psize, ssize);

	/* Primary is full, try the secondary */
	if (FUNC4(slot == -1)) {
		hpte_group = (~hash & htab_hash_mask) * HPTES_PER_GROUP;
		slot = mmu_hash_ops.hpte_insert(hpte_group, vpn, pa, rflags,
						vflags | HPTE_V_SECONDARY,
						psize, psize, ssize);
		if (slot == -1) {
			if (FUNC0() & 0x1)
				hpte_group = (hash & htab_hash_mask) *
						HPTES_PER_GROUP;

			mmu_hash_ops.hpte_remove(hpte_group);
			goto repeat;
		}
	}

	return slot;
}