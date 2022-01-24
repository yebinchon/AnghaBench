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
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ huge_arena_ind ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

arena_t *
FUNC8(tsd_t *tsd) {
	/* huge_arena_ind can be 0 during init (will use a0). */
	if (huge_arena_ind == 0) {
		FUNC5(!FUNC6());
	}

	arena_t *huge_arena = FUNC2(FUNC7(tsd), huge_arena_ind, false);
	if (huge_arena == NULL) {
		/* Create the huge arena on demand. */
		FUNC5(huge_arena_ind != 0);
		huge_arena = FUNC2(FUNC7(tsd), huge_arena_ind, true);
		if (huge_arena == NULL) {
			return NULL;
		}
		/*
		 * Purge eagerly for huge allocations, because: 1) number of
		 * huge allocations is usually small, which means ticker based
		 * decay is not reliable; and 2) less immediate reuse is
		 * expected for huge allocations.
		 */
		if (FUNC0() > 0) {
			FUNC1(FUNC7(tsd), huge_arena, 0);
		}
		if (FUNC3() > 0) {
			FUNC4(FUNC7(tsd), huge_arena, 0);
		}
	}

	return huge_arena;
}