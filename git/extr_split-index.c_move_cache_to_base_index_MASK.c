#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct split_index {TYPE_1__* base; } ;
struct index_state {int cache_nr; int /*<<< orphan*/  cache; int /*<<< orphan*/ * ce_mem_pool; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  version; struct split_index* split_index; } ;
struct TYPE_6__ {int /*<<< orphan*/  ce_flags; } ;
struct TYPE_5__ {int cache_nr; TYPE_3__** cache; int /*<<< orphan*/ * ce_mem_pool; int /*<<< orphan*/  cache_alloc; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CE_UPDATE_IN_BASE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int,int) ; 

void FUNC6(struct index_state *istate)
{
	struct split_index *si = istate->split_index;
	int i;

	/*
	 * If there was a previous base index, then transfer ownership of allocated
	 * entries to the parent index.
	 */
	if (si->base &&
		si->base->ce_mem_pool) {

		if (!istate->ce_mem_pool)
			FUNC4(&istate->ce_mem_pool, 0);

		FUNC3(istate->ce_mem_pool, istate->split_index->base->ce_mem_pool);
	}

	si->base = FUNC5(1, sizeof(*si->base));
	si->base->version = istate->version;
	/* zero timestamp disables racy test in ce_write_index() */
	si->base->timestamp = istate->timestamp;
	FUNC0(si->base->cache, istate->cache_nr, si->base->cache_alloc);
	si->base->cache_nr = istate->cache_nr;

	/*
	 * The mem_pool needs to move with the allocated entries.
	 */
	si->base->ce_mem_pool = istate->ce_mem_pool;
	istate->ce_mem_pool = NULL;

	FUNC1(si->base->cache, istate->cache, istate->cache_nr);
	FUNC2(si->base);
	for (i = 0; i < si->base->cache_nr; i++)
		si->base->cache[i]->ce_flags &= ~CE_UPDATE_IN_BASE;
}