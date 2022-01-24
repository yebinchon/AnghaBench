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
struct hash_pte {void* v; void* r; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long,unsigned long,...) ; 
 int HPTES_PER_GROUP ; 
 unsigned long HPTE_V_BOLTED ; 
 unsigned long HPTE_V_SECONDARY ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long FUNC5 (unsigned long,int,int) ; 
 unsigned long FUNC6 (unsigned long,int,int,int) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 unsigned long FUNC8 (unsigned long) ; 
 struct hash_pte* htab_address ; 
 int /*<<< orphan*/  FUNC9 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC10 (struct hash_pte*) ; 

__attribute__((used)) static long FUNC11(unsigned long hpte_group, unsigned long vpn,
			unsigned long pa, unsigned long rflags,
			unsigned long vflags, int psize, int apsize, int ssize)
{
	struct hash_pte *hptep = htab_address + hpte_group;
	unsigned long hpte_v, hpte_r;
	int i;

	if (!(vflags & HPTE_V_BOLTED)) {
		FUNC0("    insert(group=%lx, vpn=%016lx, pa=%016lx,"
			" rflags=%lx, vflags=%lx, psize=%d)\n",
			hpte_group, vpn, pa, rflags, vflags, psize);
	}

	for (i = 0; i < HPTES_PER_GROUP; i++) {
		if (! (FUNC1(hptep->v) & HPTE_V_VALID)) {
			/* retry with lock held */
			FUNC9(hptep);
			if (! (FUNC1(hptep->v) & HPTE_V_VALID))
				break;
			FUNC10(hptep);
		}

		hptep++;
	}

	if (i == HPTES_PER_GROUP)
		return -1;

	hpte_v = FUNC6(vpn, psize, apsize, ssize) | vflags | HPTE_V_VALID;
	hpte_r = FUNC5(pa, psize, apsize) | rflags;

	if (!(vflags & HPTE_V_BOLTED)) {
		FUNC0(" i=%x hpte_v=%016lx, hpte_r=%016lx\n",
			i, hpte_v, hpte_r);
	}

	if (FUNC2(CPU_FTR_ARCH_300)) {
		hpte_r = FUNC7(hpte_v, hpte_r);
		hpte_v = FUNC8(hpte_v);
	}

	hptep->r = FUNC3(hpte_r);
	/* Guarantee the second dword is visible before the valid bit */
	FUNC4();
	/*
	 * Now set the first dword including the valid bit
	 * NOTE: this also unlocks the hpte
	 */
	hptep->v = FUNC3(hpte_v);

	__asm__ __volatile__ ("ptesync" : : : "memory");

	return i | (!!(vflags & HPTE_V_SECONDARY) << 3);
}