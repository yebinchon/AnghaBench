#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_9__ {int /*<<< orphan*/  mtx; } ;
struct TYPE_8__ {int /*<<< orphan*/  mtx; } ;
struct TYPE_10__ {int /*<<< orphan*/  tcache_ql_mtx; TYPE_3__ decay_muzzy; TYPE_2__ decay_dirty; int /*<<< orphan*/  extent_grow_mtx; int /*<<< orphan*/  eset_retained; int /*<<< orphan*/  eset_muzzy; int /*<<< orphan*/  eset_dirty; int /*<<< orphan*/  extent_avail_mtx; int /*<<< orphan*/  base; int /*<<< orphan*/  large_mtx; TYPE_1__* bins; } ;
typedef  TYPE_4__ arena_t ;
struct TYPE_11__ {unsigned int n_shards; } ;
struct TYPE_7__ {int /*<<< orphan*/ * bin_shards; } ;

/* Variables and functions */
 unsigned int SC_NBINS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* bin_infos ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(tsdn_t *tsdn, arena_t *arena) {
	unsigned i;

	for (i = 0; i < SC_NBINS; i++) {
		for (unsigned j = 0; j < bin_infos[i].n_shards; j++) {
			FUNC1(tsdn,
			    &arena->bins[i].bin_shards[j]);
		}
	}
	FUNC3(tsdn, &arena->large_mtx);
	FUNC0(tsdn, arena->base);
	FUNC3(tsdn, &arena->extent_avail_mtx);
	FUNC2(tsdn, &arena->eset_dirty);
	FUNC2(tsdn, &arena->eset_muzzy);
	FUNC2(tsdn, &arena->eset_retained);
	FUNC3(tsdn, &arena->extent_grow_mtx);
	FUNC3(tsdn, &arena->decay_dirty.mtx);
	FUNC3(tsdn, &arena->decay_muzzy.mtx);
	if (config_stats) {
		FUNC3(tsdn, &arena->tcache_ql_mtx);
	}
}