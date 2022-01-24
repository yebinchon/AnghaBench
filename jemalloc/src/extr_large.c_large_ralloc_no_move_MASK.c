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
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 size_t SC_LARGE_MAXCLASS ; 
 size_t SC_LARGE_MINCLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

bool
FUNC6(tsdn_t *tsdn, extent_t *extent, size_t usize_min,
    size_t usize_max, bool zero) {
	size_t oldusize = FUNC3(extent);

	/* The following should have been caught by callers. */
	FUNC2(usize_min > 0 && usize_max <= SC_LARGE_MAXCLASS);
	/* Both allocation sizes must be large to avoid a move. */
	FUNC2(oldusize >= SC_LARGE_MINCLASS
	    && usize_max >= SC_LARGE_MINCLASS);

	if (usize_max > oldusize) {
		/* Attempt to expand the allocation in-place. */
		if (!FUNC4(tsdn, extent, usize_max,
		    zero)) {
			FUNC0(tsdn, FUNC1(extent));
			return false;
		}
		/* Try again, this time with usize_min. */
		if (usize_min < usize_max && usize_min > oldusize &&
		    FUNC4(tsdn, extent, usize_min,
		    zero)) {
			FUNC0(tsdn, FUNC1(extent));
			return false;
		}
	}

	/*
	 * Avoid moving the allocation if the existing extent size accommodates
	 * the new size.
	 */
	if (oldusize >= usize_min && oldusize <= usize_max) {
		FUNC0(tsdn, FUNC1(extent));
		return false;
	}

	/* Attempt to shrink the allocation in-place. */
	if (oldusize > usize_max) {
		if (!FUNC5(tsdn, extent, usize_max)) {
			FUNC0(tsdn, FUNC1(extent));
			return false;
		}
	}
	return true;
}