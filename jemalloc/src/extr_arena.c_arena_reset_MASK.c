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
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_9__ {int /*<<< orphan*/  nactive; TYPE_1__* bins; int /*<<< orphan*/  large_mtx; int /*<<< orphan*/  large; } ;
typedef  TYPE_2__ arena_t ;
struct TYPE_10__ {scalar_t__ szind; int /*<<< orphan*/  slab; } ;
typedef  TYPE_3__ alloc_ctx_t ;
struct TYPE_11__ {unsigned int n_shards; } ;
struct TYPE_8__ {int /*<<< orphan*/ * bin_shards; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 unsigned int SC_NBINS ; 
 scalar_t__ SC_NSIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* bin_infos ; 
 scalar_t__ config_prof ; 
 scalar_t__ config_stats ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extents_rtree ; 
 size_t FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ opt_prof ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,size_t,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 size_t FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void
FUNC14(tsd_t *tsd, arena_t *arena) {
	/*
	 * Locking in this function is unintuitive.  The caller guarantees that
	 * no concurrent operations are happening in this arena, but there are
	 * still reasons that some locking is necessary:
	 *
	 * - Some of the functions in the transitive closure of calls assume
	 *   appropriate locks are held, and in some cases these locks are
	 *   temporarily dropped to avoid lock order reversal or deadlock due to
	 *   reentry.
	 * - mallctl("epoch", ...) may concurrently refresh stats.  While
	 *   strictly speaking this is a "concurrent operation", disallowing
	 *   stats refreshes would impose an inconvenient burden.
	 */

	/* Large allocations. */
	FUNC7(FUNC13(tsd), &arena->large_mtx);

	for (extent_t *extent = FUNC4(&arena->large); extent !=
	    NULL; extent = FUNC4(&arena->large)) {
		void *ptr = FUNC3(extent);
		size_t usize;

		FUNC8(FUNC13(tsd), &arena->large_mtx);
		alloc_ctx_t alloc_ctx;
		rtree_ctx_t *rtree_ctx = FUNC12(tsd);
		FUNC10(FUNC13(tsd), &extents_rtree, rtree_ctx,
		    (uintptr_t)ptr, true, &alloc_ctx.szind, &alloc_ctx.slab);
		FUNC1(alloc_ctx.szind != SC_NSIZES);

		if (config_stats || (config_prof && opt_prof)) {
			usize = FUNC11(alloc_ctx.szind);
			FUNC1(usize == FUNC5(FUNC13(tsd), ptr));
		}
		/* Remove large allocation from prof sample set. */
		if (config_prof && opt_prof) {
			FUNC9(tsd, ptr, usize, &alloc_ctx);
		}
		FUNC6(FUNC13(tsd), extent);
		FUNC7(FUNC13(tsd), &arena->large_mtx);
	}
	FUNC8(FUNC13(tsd), &arena->large_mtx);

	/* Bins. */
	for (unsigned i = 0; i < SC_NBINS; i++) {
		for (unsigned j = 0; j < bin_infos[i].n_shards; j++) {
			FUNC0(tsd, arena,
			    &arena->bins[i].bin_shards[j]);
		}
	}

	FUNC2(&arena->nactive, 0, ATOMIC_RELAXED);
}