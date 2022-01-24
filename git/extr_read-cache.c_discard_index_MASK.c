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
struct TYPE_2__ {scalar_t__ nsec; scalar_t__ sec; } ;
struct index_state {int /*<<< orphan*/ * ce_mem_pool; int /*<<< orphan*/ * untracked; scalar_t__ cache_alloc; int /*<<< orphan*/  cache; scalar_t__ fsmonitor_has_run_once; scalar_t__ initialized; int /*<<< orphan*/  cache_tree; TYPE_1__ timestamp; scalar_t__ cache_changed; scalar_t__ cache_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct index_state*) ; 

int FUNC9(struct index_state *istate)
{
	/*
	 * Cache entries in istate->cache[] should have been allocated
	 * from the memory pool associated with this index, or from an
	 * associated split_index. There is no need to free individual
	 * cache entries. validate_cache_entries can detect when this
	 * assertion does not hold.
	 */
	FUNC8(istate);

	FUNC6(istate);
	istate->cache_nr = 0;
	istate->cache_changed = 0;
	istate->timestamp.sec = 0;
	istate->timestamp.nsec = 0;
	FUNC3(istate);
	FUNC1(&(istate->cache_tree));
	istate->initialized = 0;
	istate->fsmonitor_has_run_once = 0;
	FUNC0(istate->cache);
	istate->cache_alloc = 0;
	FUNC2(istate);
	FUNC4(istate->untracked);
	istate->untracked = NULL;

	if (istate->ce_mem_pool) {
		FUNC5(istate->ce_mem_pool, FUNC7());
		istate->ce_mem_pool = NULL;
	}

	return 0;
}