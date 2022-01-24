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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  muzzy_decay_ms ;
typedef  int /*<<< orphan*/  mib ;
typedef  int /*<<< orphan*/  dirty_decay_ms ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t*,size_t*) ; 

__attribute__((used)) static unsigned
FUNC4(ssize_t dirty_decay_ms, ssize_t muzzy_decay_ms) {
	unsigned arena_ind;
	size_t sz = sizeof(unsigned);
	FUNC0(FUNC1("arenas.create", (void *)&arena_ind, &sz, NULL, 0),
	    0, "Unexpected mallctl() failure");
	size_t mib[3];
	size_t miblen = sizeof(mib)/sizeof(size_t);

	FUNC0(FUNC3("arena.0.dirty_decay_ms", mib, &miblen),
	    0, "Unexpected mallctlnametomib() failure");
	mib[1] = (size_t)arena_ind;
	FUNC0(FUNC2(mib, miblen, NULL, NULL,
	    (void *)&dirty_decay_ms, sizeof(dirty_decay_ms)), 0,
	    "Unexpected mallctlbymib() failure");

	FUNC0(FUNC3("arena.0.muzzy_decay_ms", mib, &miblen),
	    0, "Unexpected mallctlnametomib() failure");
	mib[1] = (size_t)arena_ind;
	FUNC0(FUNC2(mib, miblen, NULL, NULL,
	    (void *)&muzzy_decay_ms, sizeof(muzzy_decay_ms)), 0,
	    "Unexpected mallctlbymib() failure");

	return arena_ind;
}