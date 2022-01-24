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
 unsigned long HPTE_R_N ; 
 unsigned long HPTE_R_PPP ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 unsigned long FUNC3 (unsigned long,unsigned long,int) ; 
 struct hash_pte* htab_address ; 
 long FUNC4 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long newpp, unsigned long ea,
				       int psize, int ssize)
{
	unsigned long vpn;
	unsigned long vsid;
	long slot;
	struct hash_pte *hptep;

	vsid = FUNC2(ea, ssize);
	vpn = FUNC3(ea, vsid, ssize);

	slot = FUNC4(vpn, psize, ssize);
	if (slot == -1)
		FUNC5("could not find page to bolt\n");
	hptep = htab_address + slot;

	/* Update the HPTE */
	hptep->r = FUNC1((FUNC0(hptep->r) &
				~(HPTE_R_PPP | HPTE_R_N)) |
			       (newpp & (HPTE_R_PPP | HPTE_R_N)));
	/*
	 * Ensure it is out of the tlb too. Bolted entries base and
	 * actual page size will be same.
	 */
	FUNC6(vpn, psize, psize, ssize, 0);
}