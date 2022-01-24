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
struct TYPE_6__ {int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ eset_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t PAGE ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ config_debug ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,size_t,size_t) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static extent_t *
FUNC17(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, rtree_ctx_t *rtree_ctx, eset_t *eset,
    void *new_addr, size_t size, size_t pad, size_t alignment, bool slab,
    bool growing_retained) {
	FUNC16(FUNC15(tsdn),
	    WITNESS_RANK_CORE, growing_retained ? 1 : 0);
	FUNC2(alignment > 0);
	if (config_debug && new_addr != NULL) {
		/*
		 * Non-NULL new_addr has two use cases:
		 *
		 *   1) Recycle a known-extant extent, e.g. during purging.
		 *   2) Perform in-place expanding reallocation.
		 *
		 * Regardless of use case, new_addr must either refer to a
		 * non-existing extent, or to the base of an extant extent,
		 * since only active slabs support interior lookups (which of
		 * course cannot be recycled).
		 */
		FUNC2(FUNC0(new_addr) == new_addr);
		FUNC2(pad == 0);
		FUNC2(alignment <= PAGE);
	}

	size_t esize = size + pad;
	FUNC13(tsdn, &eset->mtx);
	FUNC8(arena, r_extent_hooks);
	extent_t *extent;
	if (new_addr != NULL) {
		extent = FUNC9(tsdn, rtree_ctx, new_addr,
		    false);
		if (extent != NULL) {
			/*
			 * We might null-out extent to report an error, but we
			 * still need to unlock the associated mutex after.
			 */
			extent_t *unlock_extent = extent;
			FUNC2(FUNC7(extent) == new_addr);
			if (FUNC6(extent)
			    != FUNC1(arena) ||
			    FUNC10(extent) < esize ||
			    FUNC11(extent) !=
			    FUNC4(eset)) {
				extent = NULL;
			}
			FUNC12(tsdn, unlock_extent);
		}
	} else {
		extent = FUNC3(tsdn, eset, esize, alignment);
	}
	if (extent == NULL) {
		FUNC14(tsdn, &eset->mtx);
		return NULL;
	}

	FUNC5(tsdn, arena, eset, extent);
	FUNC14(tsdn, &eset->mtx);

	return extent;
}