#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_6__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  delay_coalesce; int /*<<< orphan*/  npages; int /*<<< orphan*/  lru; } ;
typedef  TYPE_1__ eset_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
#define  extent_state_active 131 
#define  extent_state_dirty 130 
#define  extent_state_muzzy 129 
#define  extent_state_retained 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

extent_t *
FUNC11(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    eset_t *eset, size_t npages_min) {
	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC10(tsdn, &rtree_ctx_fallback);

	FUNC7(tsdn, &eset->mtx);

	/*
	 * Get the LRU coalesced extent, if any.  If coalescing was delayed,
	 * the loop will iterate until the LRU extent is fully coalesced.
	 */
	extent_t *extent;
	while (true) {
		/* Get the LRU extent, if any. */
		extent = FUNC4(&eset->lru);
		if (extent == NULL) {
			goto label_return;
		}
		/* Check the eviction limit. */
		size_t extents_npages = FUNC0(&eset->npages,
		    ATOMIC_RELAXED);
		if (extents_npages <= npages_min) {
			extent = NULL;
			goto label_return;
		}
		FUNC1(tsdn, eset, extent);
		if (!eset->delay_coalesce) {
			break;
		}
		/* Try to coalesce. */
		if (FUNC6(tsdn, arena, r_extent_hooks,
		    rtree_ctx, eset, extent)) {
			break;
		}
		/*
		 * The LRU extent was just coalesced and the result placed in
		 * the LRU at its neighbor's position.  Start over.
		 */
	}

	/*
	 * Either mark the extent active or deregister it to protect against
	 * concurrent operations.
	 */
	switch (FUNC2(eset)) {
	case extent_state_active:
		FUNC9();
	case extent_state_dirty:
	case extent_state_muzzy:
		FUNC5(extent, extent_state_active);
		break;
	case extent_state_retained:
		FUNC3(tsdn, extent);
		break;
	default:
		FUNC9();
	}

label_return:
	FUNC8(tsdn, &eset->mtx);
	return extent;
}