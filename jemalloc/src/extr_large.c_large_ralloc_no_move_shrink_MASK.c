#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {int /*<<< orphan*/ * split; } ;
typedef  TYPE_1__ extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  SC_NSIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ config_fill ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ,int) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  opt_junk_free ; 
 size_t sz_large_pad ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC12(tsdn_t *tsdn, extent_t *extent, size_t usize) {
	arena_t *arena = FUNC2(extent);
	size_t oldusize = FUNC8(extent);
	extent_hooks_t *extent_hooks = FUNC5(arena);
	size_t diff = FUNC6(extent) - (usize + sz_large_pad);

	FUNC3(oldusize > usize);

	if (extent_hooks->split == NULL) {
		return true;
	}

	/* Split excess pages. */
	if (diff != 0) {
		extent_t *trail = FUNC7(tsdn, arena,
		    &extent_hooks, extent, usize + sz_large_pad,
		    FUNC10(usize), false, diff, SC_NSIZES, false);
		if (trail == NULL) {
			return true;
		}

		if (config_fill && FUNC11(opt_junk_free)) {
			FUNC9(FUNC4(trail),
			    FUNC6(trail));
		}

		FUNC1(tsdn, arena, &extent_hooks, trail);
	}

	FUNC0(tsdn, arena, extent, oldusize);

	return false;
}