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
struct index_state {unsigned int cache_nr; int /*<<< orphan*/  cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_ENTRY_REMOVED ; 
 int CE_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*,int /*<<< orphan*/ ) ; 

void FUNC4(struct index_state *istate, int invalidate)
{
	struct cache_entry **ce_array = istate->cache;
	unsigned int i, j;

	for (i = j = 0; i < istate->cache_nr; i++) {
		if (ce_array[i]->ce_flags & CE_REMOVE) {
			if (invalidate) {
				FUNC0(istate,
							   ce_array[i]->name);
				FUNC3(istate,
								  ce_array[i]->name);
			}
			FUNC1(istate, ce_array[i]);
			FUNC2(istate, ce_array[i]);
		}
		else
			ce_array[j++] = ce_array[i];
	}
	if (j == istate->cache_nr)
		return;
	istate->cache_changed |= CE_ENTRY_REMOVED;
	istate->cache_nr = j;
}