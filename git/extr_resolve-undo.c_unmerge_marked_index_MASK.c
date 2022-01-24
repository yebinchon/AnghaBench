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
struct index_state {int cache_nr; struct cache_entry** cache; int /*<<< orphan*/  resolve_undo; } ;
struct cache_entry {int ce_flags; } ;

/* Variables and functions */
 int CE_MATCHED ; 
 int FUNC0 (struct index_state*,int) ; 

void FUNC1(struct index_state *istate)
{
	int i;

	if (!istate->resolve_undo)
		return;

	for (i = 0; i < istate->cache_nr; i++) {
		const struct cache_entry *ce = istate->cache[i];
		if (ce->ce_flags & CE_MATCHED)
			i = FUNC0(istate, i);
	}
}