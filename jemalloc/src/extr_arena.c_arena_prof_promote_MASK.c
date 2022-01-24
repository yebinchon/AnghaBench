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
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 size_t SC_LARGE_MINCLASS ; 
 size_t SC_SMALL_MAXCLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ config_opt_safety_checks ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  extents_rtree ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC10(tsdn_t *tsdn, void *ptr, size_t usize) {
	FUNC1(config_prof);
	FUNC0(ptr != NULL);
	FUNC0(FUNC3(tsdn, ptr) == SC_LARGE_MINCLASS);
	FUNC0(usize <= SC_SMALL_MAXCLASS);

	if (config_opt_safety_checks) {
		FUNC7(ptr, usize, SC_LARGE_MINCLASS);
	}

	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC9(tsdn, &rtree_ctx_fallback);

	extent_t *extent = FUNC5(tsdn, &extents_rtree, rtree_ctx,
	    (uintptr_t)ptr, true);

	szind_t szind = FUNC8(usize);
	FUNC2(extent, szind);
	FUNC6(tsdn, &extents_rtree, rtree_ctx, (uintptr_t)ptr,
	    szind, false);

	FUNC4(tsdn, usize);

	FUNC0(FUNC3(tsdn, ptr) == usize);
}