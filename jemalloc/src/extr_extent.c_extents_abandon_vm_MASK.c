#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  eset_t ;
struct TYPE_7__ {int /*<<< orphan*/  abandoned_vm; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ config_stats ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ extent_state_dirty ; 

__attribute__((used)) static void
FUNC6(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    eset_t *eset, extent_t *extent, bool growing_retained) {
	size_t sz = FUNC5(extent);
	if (config_stats) {
		FUNC0(&arena->stats.abandoned_vm, sz);
	}
	/*
	 * Leak extent after making sure its pages have already been purged, so
	 * that this is only a virtual memory leak.
	 */
	if (FUNC1(eset) == extent_state_dirty) {
		if (FUNC4(tsdn, arena, r_extent_hooks,
		    extent, 0, sz, growing_retained)) {
			FUNC3(tsdn, arena, r_extent_hooks,
			    extent, 0, FUNC5(extent),
			    growing_retained);
		}
	}
	FUNC2(tsdn, arena, extent);
}