#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_14__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  delay_coalesce; } ;
typedef  TYPE_1__ eset_t ;
struct TYPE_15__ {TYPE_1__ eset_dirty; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 scalar_t__ SC_LARGE_MINCLASS ; 
 int /*<<< orphan*/  SC_NSIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ extent_state_active ; 
 scalar_t__ extent_state_dirty ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ extent_state_muzzy ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extents_rtree ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ oversize_threshold ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    eset_t *eset, extent_t *extent, bool growing_retained) {
	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC18(tsdn, &rtree_ctx_fallback);

	FUNC1((FUNC2(eset) != extent_state_dirty &&
	    FUNC2(eset) != extent_state_muzzy) ||
	    !FUNC14(extent));

	FUNC15(tsdn, &eset->mtx);
	FUNC5(arena, r_extent_hooks);

	FUNC11(extent, SC_NSIZES);
	if (FUNC8(extent)) {
		FUNC6(tsdn, rtree_ctx, extent);
		FUNC9(extent, false);
	}

	FUNC1(FUNC17(tsdn, &extents_rtree, rtree_ctx,
	    (uintptr_t)FUNC3(extent), true) == extent);

	if (!eset->delay_coalesce) {
		extent = FUNC12(tsdn, arena, r_extent_hooks,
		    rtree_ctx, eset, extent, NULL, growing_retained);
	} else if (FUNC7(extent) >= SC_LARGE_MINCLASS) {
		FUNC1(eset == &arena->eset_dirty);
		/* Always coalesce large eset eagerly. */
		bool coalesced;
		do {
			FUNC1(FUNC10(extent) == extent_state_active);
			extent = FUNC13(tsdn, arena,
			    r_extent_hooks, rtree_ctx, eset, extent,
			    &coalesced, growing_retained);
		} while (coalesced);
		if (FUNC7(extent) >= oversize_threshold) {
			/* Shortcut to purge the oversize extent eagerly. */
			FUNC16(tsdn, &eset->mtx);
			FUNC0(tsdn, arena, r_extent_hooks, extent);
			return;
		}
	}
	FUNC4(tsdn, arena, eset, extent);

	FUNC16(tsdn, &eset->mtx);
}