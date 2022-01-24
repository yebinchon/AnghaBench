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
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_5__ {void* (* alloc ) (TYPE_1__*,int /*<<< orphan*/ *,size_t,size_t,int*,int*,unsigned int) ;} ;
typedef  TYPE_1__ extent_hooks_t ;

/* Variables and functions */
 size_t HUGEPAGE ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,size_t,size_t,int*,int*) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,size_t,size_t,int*,int*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC9(tsdn_t *tsdn, extent_hooks_t *extent_hooks, unsigned ind, size_t size) {
	void *addr;
	bool zero = true;
	bool commit = true;

	/* Use huge page sizes and alignment regardless of opt_metadata_thp. */
	FUNC1(size == FUNC0(size));
	size_t alignment = HUGEPAGE;
	if (extent_hooks == &extent_hooks_default) {
		addr = FUNC2(NULL, size, alignment, &zero, &commit);
	} else {
		/* No arena context as we are creating new arenas. */
		tsd_t *tsd = FUNC7(tsdn) ? FUNC6() : FUNC8(tsdn);
		FUNC4(tsd, NULL);
		addr = extent_hooks->alloc(extent_hooks, NULL, size, alignment,
		    &zero, &commit, ind);
		FUNC3(tsd);
	}

	return addr;
}