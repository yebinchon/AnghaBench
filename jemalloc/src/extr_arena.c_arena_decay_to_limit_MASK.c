#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_list_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  eset_t ;
typedef  int /*<<< orphan*/  arena_t ;
struct TYPE_4__ {int purging; int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ arena_decay_t ;

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    eset_t *eset, bool all, size_t npages_limit, size_t npages_decay_max,
    bool is_background_thread) {
	FUNC9(FUNC8(tsdn),
	    WITNESS_RANK_CORE, 1);
	FUNC5(tsdn, &decay->mtx);

	if (decay->purging || npages_decay_max == 0) {
		return;
	}
	decay->purging = true;
	FUNC7(tsdn, &decay->mtx);

	extent_hooks_t *extent_hooks = FUNC3(arena);

	extent_list_t decay_extents;
	FUNC4(&decay_extents);

	size_t npurge = FUNC1(tsdn, arena, &extent_hooks, eset,
	    npages_limit, npages_decay_max, &decay_extents);
	if (npurge != 0) {
		size_t npurged = FUNC0(tsdn, arena,
		    &extent_hooks, decay, eset, all, &decay_extents,
		    is_background_thread);
		FUNC2(npurged == npurge);
	}

	FUNC6(tsdn, &decay->mtx);
	decay->purging = false;
}