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
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  arena_t ;
struct TYPE_2__ {size_t reg_size; } ;

/* Variables and functions */
 size_t SC_LARGE_MAXCLASS ; 
 size_t SC_LARGE_MINCLASS ; 
 size_t SC_SMALL_MAXCLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* bin_infos ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int) ; 
 scalar_t__ FUNC6 (int) ; 
 size_t FUNC7 (size_t) ; 
 size_t FUNC8 (size_t) ; 
 scalar_t__ FUNC9 (int) ; 

bool
FUNC10(tsdn_t *tsdn, void *ptr, size_t oldsize, size_t size,
    size_t extra, bool zero, size_t *newsize) {
	bool ret;
	/* Calls with non-zero extra had to clamp extra. */
	FUNC2(extra == 0 || size + extra <= SC_LARGE_MAXCLASS);

	extent_t *extent = FUNC4(tsdn, ptr);
	if (FUNC9(size > SC_LARGE_MAXCLASS)) {
		ret = true;
		goto done;
	}

	size_t usize_min = FUNC7(size);
	size_t usize_max = FUNC7(size + extra);
	if (FUNC6(oldsize <= SC_SMALL_MAXCLASS && usize_min
	    <= SC_SMALL_MAXCLASS)) {
		/*
		 * Avoid moving the allocation if the size class can be left the
		 * same.
		 */
		FUNC2(bin_infos[FUNC8(oldsize)].reg_size ==
		    oldsize);
		if ((usize_max > SC_SMALL_MAXCLASS
		    || FUNC8(usize_max) != FUNC8(oldsize))
		    && (size > oldsize || usize_max < oldsize)) {
			ret = true;
			goto done;
		}

		arena_t *arena = FUNC1(extent);
		FUNC0(tsdn, arena);
		ret = false;
	} else if (oldsize >= SC_LARGE_MINCLASS
	    && usize_max >= SC_LARGE_MINCLASS) {
		ret = FUNC5(tsdn, extent, usize_min, usize_max,
		    zero);
	} else {
		ret = true;
	}
done:
	FUNC2(extent == FUNC4(tsdn, ptr));
	*newsize = FUNC3(extent);

	return ret;
}