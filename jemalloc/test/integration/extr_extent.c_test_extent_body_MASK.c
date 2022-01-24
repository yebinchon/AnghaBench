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
typedef  int /*<<< orphan*/  purge_mib ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int MALLOCX_TCACHE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int called_alloc ; 
 int called_dalloc ; 
 int called_decommit ; 
 int called_split ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int did_commit ; 
 int did_decommit ; 
 int did_merge ; 
 int did_purge_forced ; 
 int did_purge_lazy ; 
 int did_split ; 
 int /*<<< orphan*/  FUNC6 (char*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (size_t*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t*,size_t*) ; 
 void* FUNC9 (int,int) ; 
 int try_alloc ; 
 int try_dalloc ; 
 int try_decommit ; 
 size_t FUNC10 (void*,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(unsigned arena_ind) {
	void *p;
	size_t large0, large1, large2, sz;
	size_t purge_mib[3];
	size_t purge_miblen;
	int flags;
	bool xallocx_success_a, xallocx_success_b, xallocx_success_c;

	flags = FUNC0(arena_ind) | MALLOCX_TCACHE_NONE;

	/* Get large size classes. */
	sz = sizeof(size_t);
	FUNC2(FUNC6("arenas.lextent.0.size", (void *)&large0, &sz, NULL,
	    0), 0, "Unexpected arenas.lextent.0.size failure");
	FUNC2(FUNC6("arenas.lextent.1.size", (void *)&large1, &sz, NULL,
	    0), 0, "Unexpected arenas.lextent.1.size failure");
	FUNC2(FUNC6("arenas.lextent.2.size", (void *)&large2, &sz, NULL,
	    0), 0, "Unexpected arenas.lextent.2.size failure");

	/* Test dalloc/decommit/purge cascade. */
	purge_miblen = sizeof(purge_mib)/sizeof(size_t);
	FUNC2(FUNC8("arena.0.purge", purge_mib, &purge_miblen),
	    0, "Unexpected mallctlnametomib() failure");
	purge_mib[1] = (size_t)arena_ind;
	called_alloc = false;
	try_alloc = true;
	try_dalloc = false;
	try_decommit = false;
	p = FUNC9(large0 * 2, flags);
	FUNC3(p, "Unexpected mallocx() error");
	FUNC4(called_alloc, "Expected alloc call");
	called_dalloc = false;
	called_decommit = false;
	did_purge_lazy = false;
	did_purge_forced = false;
	called_split = false;
	xallocx_success_a = (FUNC10(p, large0, 0, flags) == large0);
	FUNC2(FUNC7(purge_mib, purge_miblen, NULL, NULL, NULL, 0),
	    0, "Unexpected arena.%u.purge error", arena_ind);
	if (xallocx_success_a) {
		FUNC4(called_dalloc, "Expected dalloc call");
		FUNC4(called_decommit, "Expected decommit call");
		FUNC4(did_purge_lazy || did_purge_forced,
		    "Expected purge");
	}
	FUNC4(called_split, "Expected split call");
	FUNC5(p, flags);
	try_dalloc = true;

	/* Test decommit/commit and observe split/merge. */
	try_dalloc = false;
	try_decommit = true;
	p = FUNC9(large0 * 2, flags);
	FUNC3(p, "Unexpected mallocx() error");
	did_decommit = false;
	did_commit = false;
	called_split = false;
	did_split = false;
	did_merge = false;
	xallocx_success_b = (FUNC10(p, large0, 0, flags) == large0);
	FUNC2(FUNC7(purge_mib, purge_miblen, NULL, NULL, NULL, 0),
	    0, "Unexpected arena.%u.purge error", arena_ind);
	if (xallocx_success_b) {
		FUNC4(did_split, "Expected split");
	}
	xallocx_success_c = (FUNC10(p, large0 * 2, 0, flags) == large0 * 2);
	if (did_split) {
		FUNC1(did_decommit, did_commit,
		    "Expected decommit/commit match");
	}
	if (xallocx_success_b && xallocx_success_c) {
		FUNC4(did_merge, "Expected merge");
	}
	FUNC5(p, flags);
	try_dalloc = true;
	try_decommit = false;

	/* Make sure non-large allocation succeeds. */
	p = FUNC9(42, flags);
	FUNC3(p, "Unexpected mallocx() error");
	FUNC5(p, flags);
}