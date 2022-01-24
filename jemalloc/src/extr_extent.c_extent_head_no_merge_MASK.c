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
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ maps_coalesce ; 
 int /*<<< orphan*/  opt_retain ; 

__attribute__((used)) static bool
FUNC4(extent_t *a, extent_t *b) {
	FUNC0(FUNC1(a) < FUNC1(b));
	/*
	 * When coalesce is not always allowed (Windows), only merge extents
	 * from the same VirtualAlloc region under opt.retain (in which case
	 * MEM_DECOMMIT is utilized for purging).
	 */
	if (maps_coalesce) {
		return false;
	}
	if (!opt_retain) {
		return true;
	}
	/* If b is a head extent, disallow the cross-region merge. */
	if (FUNC2(b)) {
		/*
		 * Additionally, sn should not overflow with retain; sanity
		 * check that different regions have unique sn.
		 */
		FUNC0(FUNC3(a, b) != 0);
		return true;
	}
	FUNC0(FUNC3(a, b) == 0);

	return false;
}