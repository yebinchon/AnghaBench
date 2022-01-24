#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_15__ {int /*<<< orphan*/ * merge; } ;
typedef  TYPE_1__ extent_hooks_t ;
struct TYPE_16__ {int /*<<< orphan*/  stats; int /*<<< orphan*/  eset_muzzy; int /*<<< orphan*/  eset_dirty; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 int /*<<< orphan*/  JEMALLOC_ALLOC_JUNK ; 
 scalar_t__ PAGE ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  SC_NSIZES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,size_t) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ config_cache_oblivious ; 
 scalar_t__ config_fill ; 
 scalar_t__ config_stats ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  extents_rtree ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  opt_junk_alloc ; 
 int /*<<< orphan*/  opt_zero ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (size_t) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC19(tsdn_t *tsdn, extent_t *extent, size_t usize,
    bool zero) {
	arena_t *arena = FUNC2(extent);
	size_t oldusize = FUNC12(extent);
	extent_hooks_t *extent_hooks = FUNC8(arena);
	size_t trailsize = usize - oldusize;

	if (extent_hooks->merge == NULL) {
		return true;
	}

	if (config_fill && FUNC18(opt_zero)) {
		zero = true;
	}
	/*
	 * Copy zero into is_zeroed_trail and pass the copy when allocating the
	 * extent, so that it is possible to make correct junk/zero fill
	 * decisions below, even if is_zeroed_trail ends up true when zero is
	 * false.
	 */
	bool is_zeroed_trail = zero;
	bool commit = true;
	extent_t *trail;
	bool new_mapping;
	if ((trail = FUNC13(tsdn, arena, &extent_hooks,
	    &arena->eset_dirty, FUNC10(extent), trailsize, 0,
	    CACHELINE, false, SC_NSIZES, &is_zeroed_trail, &commit)) != NULL
	    || (trail = FUNC13(tsdn, arena, &extent_hooks,
	    &arena->eset_muzzy, FUNC10(extent), trailsize, 0,
	    CACHELINE, false, SC_NSIZES, &is_zeroed_trail, &commit)) != NULL) {
		if (config_stats) {
			new_mapping = false;
		}
	} else {
		if ((trail = FUNC6(tsdn, arena, &extent_hooks,
		    FUNC10(extent), trailsize, 0, CACHELINE, false,
		    SC_NSIZES, &is_zeroed_trail, &commit)) == NULL) {
			return true;
		}
		if (config_stats) {
			new_mapping = true;
		}
	}

	if (FUNC9(tsdn, arena, &extent_hooks, extent, trail)) {
		FUNC7(tsdn, arena, &extent_hooks, trail);
		return true;
	}
	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC17(tsdn, &rtree_ctx_fallback);
	szind_t szind = FUNC16(usize);
	FUNC11(extent, szind);
	FUNC15(tsdn, &extents_rtree, rtree_ctx,
	    (uintptr_t)FUNC5(extent), szind, false);

	if (config_stats && new_mapping) {
		FUNC3(tsdn, &arena->stats, trailsize);
	}

	if (zero) {
		if (config_cache_oblivious) {
			/*
			 * Zero the trailing bytes of the original allocation's
			 * last page, since they are in an indeterminate state.
			 * There will always be trailing bytes, because ptr's
			 * offset from the beginning of the extent is a multiple
			 * of CACHELINE in [0 .. PAGE).
			 */
			void *zbase = (void *)
			    ((uintptr_t)FUNC5(extent) + oldusize);
			void *zpast = FUNC0((void *)((uintptr_t)zbase +
			    PAGE));
			size_t nzero = (uintptr_t)zpast - (uintptr_t)zbase;
			FUNC4(nzero > 0);
			FUNC14(zbase, 0, nzero);
		}
		FUNC4(is_zeroed_trail);
	} else if (config_fill && FUNC18(opt_junk_alloc)) {
		FUNC14((void *)((uintptr_t)FUNC5(extent) + oldusize),
		    JEMALLOC_ALLOC_JUNK, usize - oldusize);
	}

	FUNC1(tsdn, arena, extent, oldusize);

	return false;
}