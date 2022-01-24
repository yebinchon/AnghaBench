#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tcache_t ;
struct TYPE_3__ {int /*<<< orphan*/  args; scalar_t__ is_realloc; } ;
typedef  TYPE_1__ hook_ralloc_args_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t SC_LARGE_MAXCLASS ; 
 size_t SC_LARGE_MINCLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hook_alloc_rallocx ; 
 int /*<<< orphan*/  hook_alloc_realloc ; 
 int /*<<< orphan*/  hook_dalloc_rallocx ; 
 int /*<<< orphan*/  hook_dalloc_realloc ; 
 int /*<<< orphan*/  hook_expand_rallocx ; 
 int /*<<< orphan*/  hook_expand_realloc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,uintptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,size_t,size_t,uintptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,void*,size_t) ; 

void *
FUNC11(tsdn_t *tsdn, arena_t *arena, void *ptr, size_t usize,
    size_t alignment, bool zero, tcache_t *tcache,
    hook_ralloc_args_t *hook_args) {
	extent_t *extent = FUNC6(tsdn, ptr);

	size_t oldusize = FUNC2(extent);
	/* The following should have been caught by callers. */
	FUNC0(usize > 0 && usize <= SC_LARGE_MAXCLASS);
	/* Both allocation sizes must be large to avoid a move. */
	FUNC0(oldusize >= SC_LARGE_MINCLASS
	    && usize >= SC_LARGE_MINCLASS);

	/* Try to avoid moving the allocation. */
	if (!FUNC9(tsdn, extent, usize, usize, zero)) {
		FUNC5(hook_args->is_realloc
		    ? hook_expand_realloc : hook_expand_rallocx, ptr, oldusize,
		    usize, (uintptr_t)ptr, hook_args->args);
		return FUNC1(extent);
	}

	/*
	 * usize and old size are different enough that we need to use a
	 * different size class.  In that case, fall back to allocating new
	 * space and copying.
	 */
	void *ret = FUNC8(tsdn, arena, usize, alignment,
	    zero);
	if (ret == NULL) {
		return NULL;
	}

	FUNC3(hook_args->is_realloc
	    ? hook_alloc_realloc : hook_alloc_rallocx, ret, (uintptr_t)ret,
	    hook_args->args);
	FUNC4(hook_args->is_realloc
	    ? hook_dalloc_realloc : hook_dalloc_rallocx, ptr, hook_args->args);

	size_t copysize = (usize < oldusize) ? usize : oldusize;
	FUNC10(ret, FUNC1(extent), copysize);
	FUNC7(tsdn, FUNC1(extent), oldusize, tcache, NULL, true);
	return ret;
}