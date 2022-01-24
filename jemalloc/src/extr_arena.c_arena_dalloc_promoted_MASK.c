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
typedef  int /*<<< orphan*/  tcache_t ;
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 size_t SC_LARGE_MINCLASS ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ config_opt_safety_checks ; 
 int /*<<< orphan*/  config_prof ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int opt_prof ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int) ; 
 size_t tcache_maxclass ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(tsdn_t *tsdn, void *ptr, tcache_t *tcache,
    bool slow_path) {
	FUNC2(config_prof);
	FUNC1(opt_prof);

	extent_t *extent = FUNC4(tsdn, ptr);
	size_t usize = FUNC3(extent);
	size_t bumped_usize = FUNC0(tsdn, extent, ptr);
	if (config_opt_safety_checks && usize < SC_LARGE_MINCLASS) {
		/*
		 * Currently, we only do redzoning for small sampled
		 * allocations.
		 */
		FUNC1(bumped_usize == SC_LARGE_MINCLASS);
		FUNC6(ptr, usize, bumped_usize);
	}
	if (bumped_usize <= tcache_maxclass && tcache != NULL) {
		FUNC8(FUNC9(tsdn), tcache, ptr,
		    FUNC7(bumped_usize), slow_path);
	} else {
		FUNC5(tsdn, extent);
	}
}