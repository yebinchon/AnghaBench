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
typedef  int /*<<< orphan*/  spin_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_ACQUIRE ; 
 int /*<<< orphan*/  ATOMIC_RELEASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MALLOCX_TCACHE_NONE ; 
 unsigned int NEPOCHS ; 
 unsigned int PER_THD_NALLOCS ; 
 int /*<<< orphan*/  SPIN_INITIALIZER ; 
 int /*<<< orphan*/  arena_ind ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  epoch ; 
 void* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfinished ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sz ; 

__attribute__((used)) static void *
FUNC7(void *arg) {
	for (unsigned next_epoch = 1; next_epoch < NEPOCHS; next_epoch++) {
		/* Busy-wait for next epoch. */
		unsigned cur_epoch;
		spin_t spinner = SPIN_INITIALIZER;
		while ((cur_epoch = FUNC4(&epoch, ATOMIC_ACQUIRE)) !=
		    next_epoch) {
			FUNC6(&spinner);
		}
		FUNC2(cur_epoch, next_epoch, "Unexpected epoch");

		/*
		 * Allocate.  The main thread will reset the arena, so there's
		 * no need to deallocate.
		 */
		for (unsigned i = 0; i < PER_THD_NALLOCS; i++) {
			void *p = FUNC5(sz, FUNC0(arena_ind) |
			    MALLOCX_TCACHE_NONE
			    );
			FUNC1(p,
			    "Unexpected mallocx() failure\n");
		}

		/* Let the main thread know we've finished this iteration. */
		FUNC3(&nfinished, 1, ATOMIC_RELEASE);
	}

	return NULL;
}