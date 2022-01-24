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
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_5__ {int /*<<< orphan*/  base; int /*<<< orphan*/  eset_muzzy; int /*<<< orphan*/  eset_dirty; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ narenas_auto ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(tsd_t *tsd, arena_t *arena) {
	FUNC3(FUNC5(arena->base) >= narenas_auto);
	FUNC3(FUNC1(arena, false) == 0);
	FUNC3(FUNC1(arena, true) == 0);

	/*
	 * No allocations have occurred since arena_reset() was called.
	 * Furthermore, the caller (arena_i_destroy_ctl()) purged all cached
	 * extents, so only retained extents may remain.
	 */
	FUNC3(FUNC6(&arena->eset_dirty) == 0);
	FUNC3(FUNC6(&arena->eset_muzzy) == 0);

	/* Deallocate retained memory. */
	FUNC0(FUNC7(tsd), arena);

	/*
	 * Remove the arena pointer from the arenas array.  We rely on the fact
	 * that there is no way for the application to get a dirty read from the
	 * arenas array unless there is an inherent race in the application
	 * involving access of an arena being concurrently destroyed.  The
	 * application must synchronize knowledge of the arena's validity, so as
	 * long as we use an atomic write to update the arenas array, the
	 * application will get a clean read any time after it synchronizes
	 * knowledge that the arena is no longer valid.
	 */
	FUNC2(FUNC5(arena->base), NULL);

	/*
	 * Destroy the base allocator, which manages all metadata ever mapped by
	 * this arena.
	 */
	FUNC4(FUNC7(tsd), arena->base);
}