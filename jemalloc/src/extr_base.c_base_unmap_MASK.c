#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* purge_lazy ) (TYPE_1__*,void*,size_t,int /*<<< orphan*/ ,size_t,unsigned int) ;int /*<<< orphan*/  (* purge_forced ) (TYPE_1__*,void*,size_t,int /*<<< orphan*/ ,size_t,unsigned int) ;int /*<<< orphan*/  (* decommit ) (TYPE_1__*,void*,size_t,int /*<<< orphan*/ ,size_t,unsigned int) ;int /*<<< orphan*/  (* dalloc ) (TYPE_1__*,void*,size_t,int,unsigned int) ;} ;
typedef  TYPE_1__ extent_hooks_t ;

/* Variables and functions */
 uintptr_t HUGEPAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 TYPE_1__ extent_hooks_default ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,void*,size_t,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,void*,size_t,int /*<<< orphan*/ ,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,void*,size_t,int /*<<< orphan*/ ,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,void*,size_t,int /*<<< orphan*/ ,size_t,unsigned int) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(tsdn_t *tsdn, extent_hooks_t *extent_hooks, unsigned ind, void *addr,
    size_t size) {
	/*
	 * Cascade through dalloc, decommit, purge_forced, and purge_lazy,
	 * stopping at first success.  This cascade is performed for consistency
	 * with the cascade in extent_dalloc_wrapper() because an application's
	 * custom hooks may not support e.g. dalloc.  This function is only ever
	 * called as a side effect of arena destruction, so although it might
	 * seem pointless to do anything besides dalloc here, the application
	 * may in fact want the end state of all associated virtual memory to be
	 * in some consistent-but-allocated state.
	 */
	if (extent_hooks == &extent_hooks_default) {
		if (!FUNC1(addr, size)) {
			goto label_done;
		}
		if (!FUNC4(addr, size)) {
			goto label_done;
		}
		if (!FUNC6(addr, size)) {
			goto label_done;
		}
		if (!FUNC7(addr, size)) {
			goto label_done;
		}
		/* Nothing worked.  This should never happen. */
		FUNC3();
	} else {
		tsd_t *tsd = FUNC15(tsdn) ? FUNC14() : FUNC16(tsdn);
		FUNC9(tsd, NULL);
		if (extent_hooks->dalloc != NULL &&
		    !extent_hooks->dalloc(extent_hooks, addr, size, true,
		    ind)) {
			goto label_post_reentrancy;
		}
		if (extent_hooks->decommit != NULL &&
		    !extent_hooks->decommit(extent_hooks, addr, size, 0, size,
		    ind)) {
			goto label_post_reentrancy;
		}
		if (extent_hooks->purge_forced != NULL &&
		    !extent_hooks->purge_forced(extent_hooks, addr, size, 0,
		    size, ind)) {
			goto label_post_reentrancy;
		}
		if (extent_hooks->purge_lazy != NULL &&
		    !extent_hooks->purge_lazy(extent_hooks, addr, size, 0, size,
		    ind)) {
			goto label_post_reentrancy;
		}
		/* Nothing worked.  That's the application's problem. */
	label_post_reentrancy:
		FUNC8(tsd);
	}
label_done:
	if (FUNC2()) {
		/* Set NOHUGEPAGE after unmap to avoid kernel defrag. */
		FUNC0(((uintptr_t)addr & HUGEPAGE_MASK) == 0 &&
		    (size & HUGEPAGE_MASK) == 0);
		FUNC5(addr, size);
	}
}