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
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_list_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  eset_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t LG_PAGE ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC5(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, eset_t *eset, size_t npages_limit,
	size_t npages_decay_max, extent_list_t *decay_extents) {
	FUNC4(FUNC3(tsdn),
	    WITNESS_RANK_CORE, 0);

	/* Stash extents according to npages_limit. */
	size_t nstashed = 0;
	extent_t *extent;
	while (nstashed < npages_decay_max &&
	    (extent = FUNC2(tsdn, arena, r_extent_hooks, eset,
	    npages_limit)) != NULL) {
		FUNC0(decay_extents, extent);
		nstashed += FUNC1(extent) >> LG_PAGE;
	}
	return nstashed;
}