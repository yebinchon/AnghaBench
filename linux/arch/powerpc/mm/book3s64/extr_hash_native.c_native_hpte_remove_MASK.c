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
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int HPTES_PER_GROUP ; 
 unsigned long HPTE_V_BOLTED ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long FUNC1 (scalar_t__) ; 
 struct hash_pte* htab_address ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hash_pte*) ; 
 int /*<<< orphan*/  FUNC4 (struct hash_pte*) ; 

__attribute__((used)) static long FUNC5(unsigned long hpte_group)
{
	struct hash_pte *hptep;
	int i;
	int slot_offset;
	unsigned long hpte_v;

	FUNC0("    remove(group=%lx)\n", hpte_group);

	/* pick a random entry to start at */
	slot_offset = FUNC2() & 0x7;

	for (i = 0; i < HPTES_PER_GROUP; i++) {
		hptep = htab_address + hpte_group + slot_offset;
		hpte_v = FUNC1(hptep->v);

		if ((hpte_v & HPTE_V_VALID) && !(hpte_v & HPTE_V_BOLTED)) {
			/* retry with lock held */
			FUNC3(hptep);
			hpte_v = FUNC1(hptep->v);
			if ((hpte_v & HPTE_V_VALID)
			    && !(hpte_v & HPTE_V_BOLTED))
				break;
			FUNC4(hptep);
		}

		slot_offset++;
		slot_offset &= 0x7;
	}

	if (i == HPTES_PER_GROUP)
		return -1;

	/* Invalidate the hpte. NOTE: this also unlocks it */
	hptep->v = 0;

	return i;
}