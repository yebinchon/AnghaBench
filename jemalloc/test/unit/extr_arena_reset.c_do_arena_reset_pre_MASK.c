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
typedef  int /*<<< orphan*/  tsdn_t ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int MALLOCX_TCACHE_NONE ; 
 unsigned int NLARGE ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (unsigned int) ; 
 unsigned int FUNC4 () ; 
 unsigned int FUNC5 () ; 
 size_t FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 void* FUNC9 (size_t,int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 

__attribute__((used)) static void
FUNC11(unsigned arena_ind, void ***ptrs, unsigned *nptrs) {
#define NLARGE	32
	unsigned nsmall, nlarge, i;
	size_t sz;
	int flags;
	tsdn_t *tsdn;

	flags = FUNC0(arena_ind) | MALLOCX_TCACHE_NONE;

	nsmall = FUNC5();
	nlarge = FUNC4() > NLARGE ? NLARGE : FUNC4();
	*nptrs = nsmall + nlarge;
	*ptrs = (void **)FUNC8(*nptrs * sizeof(void *));
	FUNC1(*ptrs, "Unexpected malloc() failure");

	/* Allocate objects with a wide range of sizes. */
	for (i = 0; i < nsmall; i++) {
		sz = FUNC6(i);
		(*ptrs)[i] = FUNC9(sz, flags);
		FUNC1((*ptrs)[i],
		    "Unexpected mallocx(%zu, %#x) failure", sz, flags);
	}
	for (i = 0; i < nlarge; i++) {
		sz = FUNC3(i);
		(*ptrs)[nsmall + i] = FUNC9(sz, flags);
		FUNC1((*ptrs)[i],
		    "Unexpected mallocx(%zu, %#x) failure", sz, flags);
	}

	tsdn = FUNC10();

	/* Verify allocations. */
	for (i = 0; i < *nptrs; i++) {
		FUNC2(FUNC7(tsdn, (*ptrs)[i]), 0,
		    "Allocation should have queryable size");
	}
}