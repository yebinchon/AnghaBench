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
struct TYPE_6__ {int (* purge_forced ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC9(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent, size_t offset,
    size_t length, bool growing_retained) {
	FUNC8(FUNC7(tsdn),
	    WITNESS_RANK_CORE, growing_retained ? 1 : 0);

	FUNC4(arena, r_extent_hooks);

	if ((*r_extent_hooks)->purge_forced == NULL) {
		return true;
	}
	if (*r_extent_hooks != &extent_hooks_default) {
		FUNC3(tsdn, arena);
	}
	bool err = (*r_extent_hooks)->purge_forced(*r_extent_hooks,
	    FUNC1(extent), FUNC5(extent), offset, length,
	    FUNC0(arena));
	if (*r_extent_hooks != &extent_hooks_default) {
		FUNC2(tsdn);
	}
	return err;
}