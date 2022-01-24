#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_12__ {int /*<<< orphan*/  mapped; } ;
struct TYPE_11__ {TYPE_4__ stats; int /*<<< orphan*/  eset_muzzy; int /*<<< orphan*/  eset_dirty; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/ * EXTENT_HOOKS_INITIALIZER ; 
 size_t LG_PAGE ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int*,int*) ; 
 size_t sz_large_pad ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

extent_t *
FUNC11(tsdn_t *tsdn, arena_t *arena, size_t usize,
    size_t alignment, bool *zero) {
	extent_hooks_t *extent_hooks = EXTENT_HOOKS_INITIALIZER;

	FUNC10(FUNC9(tsdn),
	    WITNESS_RANK_CORE, 0);

	szind_t szind = FUNC8(usize);
	size_t mapped_add;
	bool commit = true;
	extent_t *extent = FUNC7(tsdn, arena, &extent_hooks,
	    &arena->eset_dirty, NULL, usize, sz_large_pad, alignment, false,
	    szind, zero, &commit);
	if (extent == NULL && FUNC1(arena)) {
		extent = FUNC7(tsdn, arena, &extent_hooks,
		    &arena->eset_muzzy, NULL, usize, sz_large_pad, alignment,
		    false, szind, zero, &commit);
	}
	size_t size = usize + sz_large_pad;
	if (extent == NULL) {
		extent = FUNC6(tsdn, arena, &extent_hooks, NULL,
		    usize, sz_large_pad, alignment, false, szind, zero,
		    &commit);
		if (config_stats) {
			/*
			 * extent may be NULL on OOM, but in that case
			 * mapped_add isn't used below, so there's no need to
			 * conditionlly set it to 0 here.
			 */
			mapped_add = size;
		}
	} else if (config_stats) {
		mapped_add = 0;
	}

	if (extent != NULL) {
		if (config_stats) {
			FUNC4(tsdn, &arena->stats);
			FUNC0(tsdn, arena, usize);
			if (mapped_add != 0) {
				FUNC3(tsdn, &arena->stats,
				    &arena->stats.mapped, mapped_add);
			}
			FUNC5(tsdn, &arena->stats);
		}
		FUNC2(arena, size >> LG_PAGE);
	}

	return extent;
}