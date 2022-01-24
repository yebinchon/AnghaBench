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
typedef  int /*<<< orphan*/  eset_t ;
typedef  int /*<<< orphan*/  arena_t ;
struct TYPE_6__ {size_t* backlog; int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ arena_decay_t ;

/* Variables and functions */
 int SMOOTHSTEP_NSTEPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ have_background_thread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC8(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    eset_t *eset, bool is_background_thread, bool all) {
	if (all) {
		FUNC5(tsdn, &decay->mtx);
		FUNC0(tsdn, arena, decay, eset, all, 0,
		    FUNC4(eset), is_background_thread);
		FUNC7(tsdn, &decay->mtx);

		return false;
	}

	if (FUNC6(tsdn, &decay->mtx)) {
		/* No need to wait if another thread is in progress. */
		return true;
	}

	bool epoch_advanced = FUNC1(tsdn, arena, decay, eset,
	    is_background_thread);
	size_t npages_new;
	if (epoch_advanced) {
		/* Backlog is updated on epoch advance. */
		npages_new = decay->backlog[SMOOTHSTEP_NSTEPS-1];
	}
	FUNC7(tsdn, &decay->mtx);

	if (have_background_thread && FUNC2() &&
	    epoch_advanced && !is_background_thread) {
		FUNC3(tsdn, arena, decay,
		    npages_new);
	}

	return false;
}