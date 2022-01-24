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
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  cache_bin_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void** FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  extents_rtree ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(tsdn_t *tsdn, cache_bin_t *tbin, szind_t binind,
    size_t nflush, extent_t **extents){
	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC4(tsdn, &rtree_ctx_fallback);

	/*
	 * Verify that the items in the tcache all have the correct size; this
	 * is useful for catching sized deallocation bugs, also to fail early
	 * instead of corrupting metadata.  Since this can be turned on for opt
	 * builds, avoid the branch in the loop.
	 */
	szind_t szind;
	size_t sz_sum = binind * nflush;
	void **bottom_item = FUNC1(tbin, binind);
	for (unsigned i = 0 ; i < nflush; i++) {
		FUNC2(tsdn, &extents_rtree,
		    rtree_ctx, (uintptr_t)*(bottom_item - i), true,
		    &extents[i], &szind);
		sz_sum -= szind;
	}
	if (sz_sum != 0) {
		FUNC3("<jemalloc>: size mismatch in thread cache "
		    "detected, likely caused by sized deallocation bugs by "
		    "application. Abort.\n");
		FUNC0();
	}
}