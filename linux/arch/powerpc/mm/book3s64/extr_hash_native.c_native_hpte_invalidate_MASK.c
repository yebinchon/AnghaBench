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
struct hash_pte {scalar_t__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long FUNC2 (unsigned long,int,int) ; 
 unsigned long FUNC3 (struct hash_pte*) ; 
 struct hash_pte* htab_address ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC7 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int,int,int,int) ; 

__attribute__((used)) static void FUNC9(unsigned long slot, unsigned long vpn,
				   int bpsize, int apsize, int ssize, int local)
{
	struct hash_pte *hptep = htab_address + slot;
	unsigned long hpte_v;
	unsigned long want_v;
	unsigned long flags;

	FUNC5(flags);

	FUNC0("    invalidate(vpn=%016lx, hash: %lx)\n", vpn, slot);

	want_v = FUNC2(vpn, bpsize, ssize);
	hpte_v = FUNC3(hptep);

	if (FUNC1(hpte_v, want_v) && (hpte_v & HPTE_V_VALID)) {
		FUNC6(hptep);
		/* recheck with locks held */
		hpte_v = FUNC3(hptep);

		if (FUNC1(hpte_v, want_v) && (hpte_v & HPTE_V_VALID))
			/* Invalidate the hpte. NOTE: this also unlocks it */
			hptep->v = 0;
		else
			FUNC7(hptep);
	}
	/*
	 * We need to invalidate the TLB always because hpte_remove doesn't do
	 * a tlb invalidate. If a hash bucket gets full, we "evict" a more/less
	 * random entry from it. When we do that we don't invalidate the TLB
	 * (hpte_remove) because we assume the old translation is still
	 * technically "valid".
	 */
	FUNC8(vpn, bpsize, apsize, ssize, local);

	FUNC4(flags);
}