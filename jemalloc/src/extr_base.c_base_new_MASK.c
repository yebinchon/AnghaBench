#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  pszind_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_8__ {unsigned int ind; size_t extent_sn_next; int auto_thp_switched; int allocated; int resident; int mapped; int n_thp; int /*<<< orphan*/ * avail; TYPE_2__* blocks; int /*<<< orphan*/  pind_last; int /*<<< orphan*/  mtx; int /*<<< orphan*/  extent_hooks; } ;
typedef  TYPE_1__ base_t ;
struct TYPE_9__ {int size; int /*<<< orphan*/  extent; } ;
typedef  TYPE_2__ base_block_t ;

/* Variables and functions */
 size_t FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 size_t CACHELINE ; 
 int FUNC1 (int) ; 
 int LG_HUGEPAGE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  QUANTUM ; 
 size_t SC_NSIZES ; 
 int /*<<< orphan*/  WITNESS_RANK_BASE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,size_t*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,size_t*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,size_t,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,TYPE_2__*,int) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 
 scalar_t__ metadata_thp_always ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ opt_metadata_thp ; 

base_t *
FUNC12(tsdn_t *tsdn, unsigned ind, extent_hooks_t *extent_hooks) {
	pszind_t pind_last = 0;
	size_t extent_sn_next = 0;
	base_block_t *block = FUNC5(tsdn, NULL, extent_hooks, ind,
	    &pind_last, &extent_sn_next, sizeof(base_t), QUANTUM);
	if (block == NULL) {
		return NULL;
	}

	size_t gap_size;
	size_t base_alignment = CACHELINE;
	size_t base_size = FUNC0(sizeof(base_t), base_alignment);
	base_t *base = (base_t *)FUNC6(&block->extent,
	    &gap_size, base_size, base_alignment);
	base->ind = ind;
	FUNC4(&base->extent_hooks, extent_hooks, ATOMIC_RELAXED);
	if (FUNC10(&base->mtx, "base", WITNESS_RANK_BASE,
	    malloc_mutex_rank_exclusive)) {
		FUNC8(tsdn, extent_hooks, ind, block, block->size);
		return NULL;
	}
	base->pind_last = pind_last;
	base->extent_sn_next = extent_sn_next;
	base->blocks = block;
	base->auto_thp_switched = false;
	for (szind_t i = 0; i < SC_NSIZES; i++) {
		FUNC9(&base->avail[i]);
	}
	if (config_stats) {
		base->allocated = sizeof(base_block_t);
		base->resident = FUNC2(sizeof(base_block_t));
		base->mapped = block->size;
		base->n_thp = (opt_metadata_thp == metadata_thp_always) &&
		    FUNC11() ? FUNC1(sizeof(base_block_t))
		    >> LG_HUGEPAGE : 0;
		FUNC3(base->allocated <= base->resident);
		FUNC3(base->resident <= base->mapped);
		FUNC3(base->n_thp << LG_HUGEPAGE <= base->mapped);
	}
	FUNC7(base, &block->extent, gap_size, base,
	    base_size);

	return base;
}