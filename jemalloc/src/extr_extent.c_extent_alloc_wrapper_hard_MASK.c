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
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {void* (* alloc ) (TYPE_1__*,void*,size_t,size_t,int*,int*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXTENT_NOT_HEAD ; 
 int /*<<< orphan*/  PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,size_t,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extent_state_active ; 
 void* FUNC11 (TYPE_1__*,void*,size_t,size_t,int*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static extent_t *
FUNC12(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, void *new_addr, size_t size, size_t pad,
    size_t alignment, bool slab, szind_t szind, bool *zero, bool *commit) {
	size_t esize = size + pad;
	extent_t *extent = FUNC4(tsdn, arena);
	if (extent == NULL) {
		return NULL;
	}
	void *addr;
	size_t palignment = FUNC0(alignment, PAGE);
	if (*r_extent_hooks == &extent_hooks_default) {
		/* Call directly to propagate tsdn. */
		addr = FUNC5(tsdn, arena, new_addr, esize,
		    palignment, zero, commit);
	} else {
		FUNC8(tsdn, arena);
		addr = (*r_extent_hooks)->alloc(*r_extent_hooks, new_addr,
		    esize, palignment, zero, commit, FUNC2(arena));
		FUNC7(tsdn);
	}
	if (addr == NULL) {
		FUNC6(tsdn, arena, extent);
		return NULL;
	}
	FUNC9(extent, FUNC2(arena), addr, esize, slab, szind,
	    FUNC1(arena), extent_state_active, *zero, *commit,
	    true, EXTENT_NOT_HEAD);
	if (pad != 0) {
		FUNC3(tsdn, arena, extent, alignment);
	}
	if (FUNC10(tsdn, extent)) {
		FUNC6(tsdn, arena, extent);
		return NULL;
	}

	return extent;
}