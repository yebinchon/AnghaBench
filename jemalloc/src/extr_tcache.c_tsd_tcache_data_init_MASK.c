#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_9__ {int /*<<< orphan*/ * arena; } ;
typedef  TYPE_2__ tcache_t ;
typedef  int /*<<< orphan*/  arena_t ;
struct TYPE_8__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_10__ {TYPE_1__ cur_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSDN_NULL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t,size_t,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,void*) ; 
 TYPE_4__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  total_stack_bytes ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

bool
FUNC12(tsd_t *tsd) {
	tcache_t *tcache = FUNC10(tsd);
	FUNC2(FUNC9(tcache, 0)->cur_ptr.ptr == NULL);
	size_t alignment = FUNC7(total_stack_bytes);
	size_t size = FUNC5(total_stack_bytes, alignment);

	void *avail_array = FUNC3(FUNC11(tsd), size, alignment, true,
	    NULL, true, FUNC1(TSDN_NULL, 0, true));
	if (avail_array == NULL) {
		return true;
	}

	FUNC8(tsd, tcache, avail_array);
	/*
	 * Initialization is a bit tricky here.  After malloc init is done, all
	 * threads can rely on arena_choose and associate tcache accordingly.
	 * However, the thread that does actual malloc bootstrapping relies on
	 * functional tsd, and it can only rely on a0.  In that case, we
	 * associate its tcache to a0 temporarily, and later on
	 * arena_choose_hard() will re-associate properly.
	 */
	tcache->arena = NULL;
	arena_t *arena;
	if (!FUNC4()) {
		/* If in initialization, assign to a0. */
		arena = FUNC1(FUNC11(tsd), 0, false);
		FUNC6(FUNC11(tsd), tcache, arena);
	} else {
		arena = FUNC0(tsd, NULL);
		/* This may happen if thread.tcache.enabled is used. */
		if (tcache->arena == NULL) {
			FUNC6(FUNC11(tsd), tcache, arena);
		}
	}
	FUNC2(arena == tcache->arena);

	return false;
}