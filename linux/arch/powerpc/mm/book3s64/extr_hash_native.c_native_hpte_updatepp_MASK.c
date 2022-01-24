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
struct hash_pte {int /*<<< orphan*/  r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned long HPTE_LOCAL_UPDATE ; 
 unsigned long HPTE_NOHPTE_UPDATE ; 
 unsigned long HPTE_R_C ; 
 unsigned long HPTE_R_N ; 
 unsigned long HPTE_R_PPP ; 
 unsigned long HPTE_V_AVPN ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (unsigned long,int,int) ; 
 unsigned long FUNC5 (struct hash_pte*) ; 
 struct hash_pte* htab_address ; 
 int /*<<< orphan*/  FUNC6 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC7 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int,int,int,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static long FUNC10(unsigned long slot, unsigned long newpp,
				 unsigned long vpn, int bpsize,
				 int apsize, int ssize, unsigned long flags)
{
	struct hash_pte *hptep = htab_address + slot;
	unsigned long hpte_v, want_v;
	int ret = 0, local = 0;

	want_v = FUNC4(vpn, bpsize, ssize);

	FUNC0("    update(vpn=%016lx, avpnv=%016lx, group=%lx, newpp=%lx)",
		vpn, want_v & HPTE_V_AVPN, slot, newpp);

	hpte_v = FUNC5(hptep);
	/*
	 * We need to invalidate the TLB always because hpte_remove doesn't do
	 * a tlb invalidate. If a hash bucket gets full, we "evict" a more/less
	 * random entry from it. When we do that we don't invalidate the TLB
	 * (hpte_remove) because we assume the old translation is still
	 * technically "valid".
	 */
	if (!FUNC1(hpte_v, want_v) || !(hpte_v & HPTE_V_VALID)) {
		FUNC0(" -> miss\n");
		ret = -1;
	} else {
		FUNC6(hptep);
		/* recheck with locks held */
		hpte_v = FUNC5(hptep);
		if (FUNC9(!FUNC1(hpte_v, want_v) ||
			     !(hpte_v & HPTE_V_VALID))) {
			ret = -1;
		} else {
			FUNC0(" -> hit\n");
			/* Update the HPTE */
			hptep->r = FUNC3((FUNC2(hptep->r) &
						~(HPTE_R_PPP | HPTE_R_N)) |
					       (newpp & (HPTE_R_PPP | HPTE_R_N |
							 HPTE_R_C)));
		}
		FUNC7(hptep);
	}

	if (flags & HPTE_LOCAL_UPDATE)
		local = 1;
	/*
	 * Ensure it is out of the tlb too if it is not a nohpte fault
	 */
	if (!(flags & HPTE_NOHPTE_UPDATE))
		FUNC8(vpn, bpsize, apsize, ssize, local);

	return ret;
}