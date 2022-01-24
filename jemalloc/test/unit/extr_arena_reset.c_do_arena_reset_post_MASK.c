#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_2__ {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 scalar_t__ have_background_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void
FUNC7(void **ptrs, unsigned nptrs, unsigned arena_ind) {
	tsdn_t *tsdn;
	unsigned i;

	tsdn = FUNC5();

	if (have_background_thread) {
		FUNC3(tsdn,
		    &FUNC1(arena_ind)->mtx);
	}
	/* Verify allocations no longer exist. */
	for (i = 0; i < nptrs; i++) {
		FUNC0(FUNC6(tsdn, ptrs[i]), 0,
		    "Allocation should no longer exist");
	}
	if (have_background_thread) {
		FUNC4(tsdn,
		    &FUNC1(arena_ind)->mtx);
	}

	FUNC2(ptrs);
}