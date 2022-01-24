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
typedef  void* u64 ;
struct hash_pte {int /*<<< orphan*/  r; int /*<<< orphan*/  v; } ;
struct TYPE_2__ {unsigned long shift; } ;

/* Variables and functions */
 unsigned long HPTES_PER_GROUP ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 unsigned long HPTE_V_VALID ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 unsigned long FUNC3 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC4 (unsigned long,unsigned long,int) ; 
 unsigned long FUNC5 (unsigned long,int,int) ; 
 struct hash_pte* htab_address ; 
 unsigned long htab_hash_mask ; 
 int mmu_kernel_ssize ; 
 TYPE_1__* mmu_psize_defs ; 

__attribute__((used)) static int FUNC6(unsigned long ea, int psize, bool primary, u64 *v, u64
		*r)
{
	struct hash_pte *hptep;
	unsigned long hash, vsid, vpn, hpte_group, want_v, hpte_v;
	int i, ssize = mmu_kernel_ssize;
	unsigned long shift = mmu_psize_defs[psize].shift;

	/* calculate hash */
	vsid = FUNC2(ea, ssize);
	vpn  = FUNC4(ea, vsid, ssize);
	hash = FUNC3(vpn, shift, ssize);
	want_v = FUNC5(vpn, psize, ssize);

	/* to check in the secondary hash table, we invert the hash */
	if (!primary)
		hash = ~hash;
	hpte_group = (hash & htab_hash_mask) * HPTES_PER_GROUP;
	for (i = 0; i < HPTES_PER_GROUP; i++) {
		hptep = htab_address + hpte_group;
		hpte_v = FUNC1(hptep->v);

		if (FUNC0(hpte_v, want_v) && (hpte_v & HPTE_V_VALID)) {
			/* HPTE matches */
			*v = FUNC1(hptep->v);
			*r = FUNC1(hptep->r);
			return 0;
		}
		++hpte_group;
	}
	return -1;
}