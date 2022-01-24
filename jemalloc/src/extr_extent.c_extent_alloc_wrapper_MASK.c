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
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void*,size_t,size_t,size_t,int,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ opt_retain ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

extent_t *
FUNC7(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit) {
	FUNC6(FUNC5(tsdn),
	    WITNESS_RANK_CORE, 0);

	FUNC4(arena, r_extent_hooks);

	extent_t *extent = FUNC1(tsdn, arena, r_extent_hooks,
	    new_addr, size, pad, alignment, slab, szind, zero, commit);
	if (extent == NULL) {
		if (opt_retain && new_addr != NULL) {
			/*
			 * When retain is enabled and new_addr is set, we do not
			 * attempt extent_alloc_wrapper_hard which does mmap
			 * that is very unlikely to succeed (unless it happens
			 * to be at the end).
			 */
			return NULL;
		}
		extent = FUNC2(tsdn, arena, r_extent_hooks,
		    new_addr, size, pad, alignment, slab, szind, zero, commit);
	}

	FUNC0(extent == NULL || FUNC3(extent));
	return extent;
}