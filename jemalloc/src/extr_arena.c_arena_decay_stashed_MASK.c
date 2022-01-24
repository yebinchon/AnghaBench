#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_list_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  eset_t ;
struct TYPE_18__ {int /*<<< orphan*/  mapped; } ;
struct TYPE_16__ {TYPE_7__ stats; int /*<<< orphan*/  eset_muzzy; } ;
typedef  TYPE_2__ arena_t ;
struct TYPE_17__ {TYPE_1__* stats; } ;
typedef  TYPE_3__ arena_decay_t ;
struct TYPE_15__ {int /*<<< orphan*/  purged; int /*<<< orphan*/  nmadvise; int /*<<< orphan*/  npurge; } ;

/* Variables and functions */
 int /*<<< orphan*/  JEMALLOC_FALLTHROUGH ; 
 size_t LG_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 scalar_t__ config_stats ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
#define  extent_state_active 131 
#define  extent_state_dirty 130 
#define  extent_state_muzzy 129 
#define  extent_state_retained 128 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static size_t
FUNC14(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, arena_decay_t *decay, eset_t *eset,
    bool all, extent_list_t *decay_extents, bool is_background_thread) {
	size_t nmadvise, nunmapped;
	size_t npurged;

	if (config_stats) {
		nmadvise = 0;
		nunmapped = 0;
	}
	npurged = 0;

	ssize_t muzzy_decay_ms = FUNC1(arena);
	for (extent_t *extent = FUNC8(decay_extents); extent !=
	    NULL; extent = FUNC8(decay_extents)) {
		if (config_stats) {
			nmadvise++;
		}
		size_t npages = FUNC11(extent) >> LG_PAGE;
		npurged += npages;
		FUNC9(decay_extents, extent);
		switch (FUNC6(eset)) {
		case extent_state_active:
			FUNC13();
		case extent_state_dirty:
			if (!all && muzzy_decay_ms != 0 &&
			    !FUNC10(tsdn, arena,
			    r_extent_hooks, extent, 0,
			    FUNC11(extent))) {
				FUNC12(tsdn, arena, r_extent_hooks,
				    &arena->eset_muzzy, extent);
				FUNC0(tsdn,
				    arena, is_background_thread);
				break;
			}
			JEMALLOC_FALLTHROUGH;
		case extent_state_muzzy:
			FUNC7(tsdn, arena, r_extent_hooks,
			    extent);
			if (config_stats) {
				nunmapped += npages;
			}
			break;
		case extent_state_retained:
		default:
			FUNC13();
		}
	}

	if (config_stats) {
		FUNC3(tsdn, &arena->stats);
		FUNC2(tsdn, &arena->stats, &decay->stats->npurge,
		    1);
		FUNC2(tsdn, &arena->stats,
		    &decay->stats->nmadvise, nmadvise);
		FUNC2(tsdn, &arena->stats, &decay->stats->purged,
		    npurged);
		FUNC4(tsdn, &arena->stats, &arena->stats.mapped,
		    nunmapped << LG_PAGE);
		FUNC5(tsdn, &arena->stats);
	}

	return npurged;
}