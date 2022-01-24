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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  eset_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int PAGE ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ config_debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,size_t,size_t,int,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ extent_state_active ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC16 (void*,size_t) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static extent_t *
FUNC20(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    eset_t *eset, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit,
    bool growing_retained) {
	FUNC19(FUNC18(tsdn),
	    WITNESS_RANK_CORE, growing_retained ? 1 : 0);
	FUNC0(new_addr == NULL || !slab);
	FUNC0(pad == 0 || !slab);
	FUNC0(!*zero || !slab);

	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC17(tsdn, &rtree_ctx_fallback);

	extent_t *extent = FUNC8(tsdn, arena, r_extent_hooks,
	    rtree_ctx, eset, new_addr, size, pad, alignment, slab,
	    growing_retained);
	if (extent == NULL) {
		return NULL;
	}

	extent = FUNC9(tsdn, arena, r_extent_hooks, rtree_ctx,
	    eset, new_addr, size, pad, alignment, slab, szind, extent,
	    growing_retained);
	if (extent == NULL) {
		return NULL;
	}

	if (*commit && !FUNC4(extent)) {
		if (FUNC3(tsdn, arena, r_extent_hooks, extent,
		    0, FUNC10(extent), growing_retained)) {
			FUNC7(tsdn, arena, r_extent_hooks, eset,
			    extent, growing_retained);
			return NULL;
		}
		if (!FUNC6(arena)) {
			FUNC14(extent, true);
		}
	}

	if (FUNC4(extent)) {
		*commit = true;
	}
	if (FUNC13(extent)) {
		*zero = true;
	}

	if (pad != 0) {
		FUNC1(tsdn, arena, extent, alignment);
	}
	FUNC0(FUNC12(extent) == extent_state_active);
	if (slab) {
		FUNC11(extent, slab);
		FUNC5(tsdn, rtree_ctx, extent, szind);
	}

	if (*zero) {
		void *addr = FUNC2(extent);
		if (!FUNC13(extent)) {
			size_t size = FUNC10(extent);
			if (FUNC6(arena) ||
			    FUNC16(addr, size)) {
				FUNC15(addr, 0, size);
			}
		} else if (config_debug) {
			size_t *p = (size_t *)(uintptr_t)addr;
			/* Check the first page only. */
			for (size_t i = 0; i < PAGE / sizeof(size_t); i++) {
				FUNC0(p[i] == 0);
			}
		}
	}
	return extent;
}