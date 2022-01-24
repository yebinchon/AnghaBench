#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_6__ {scalar_t__ (* decommit ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC11(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent, size_t offset,
    size_t length) {
	FUNC10(FUNC9(tsdn),
	    WITNESS_RANK_CORE, 0);

	FUNC6(arena, r_extent_hooks);

	if (*r_extent_hooks != &extent_hooks_default) {
		FUNC5(tsdn, arena);
	}
	bool err = ((*r_extent_hooks)->decommit == NULL ||
	    (*r_extent_hooks)->decommit(*r_extent_hooks,
	    FUNC1(extent), FUNC7(extent), offset, length,
	    FUNC0(arena)));
	if (*r_extent_hooks != &extent_hooks_default) {
		FUNC4(tsdn);
	}
	FUNC3(extent, FUNC2(extent) && err);
	return err;
}