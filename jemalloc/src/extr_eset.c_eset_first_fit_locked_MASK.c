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
typedef  size_t pszind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_3__ {scalar_t__ delay_coalesce; int /*<<< orphan*/ * heaps; int /*<<< orphan*/  bitmap; } ;
typedef  TYPE_1__ eset_t ;

/* Variables and functions */
 int SC_NPSIZES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  eset_bitmap_info ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  maps_coalesce ; 
 size_t opt_lg_extent_max_active_fit ; 
 int /*<<< orphan*/  opt_retain ; 
 size_t FUNC6 (size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 

__attribute__((used)) static extent_t *
FUNC9(tsdn_t *tsdn, eset_t *eset, size_t size) {
	extent_t *ret = NULL;

	pszind_t pind = FUNC7(FUNC8(size));

	if (!maps_coalesce && !opt_retain) {
		/*
		 * No split / merge allowed (Windows w/o retain). Try exact fit
		 * only.
		 */
		return FUNC2(&eset->heaps[pind]) ? NULL :
		    FUNC3(&eset->heaps[pind]);
	}

	for (pszind_t i = (pszind_t)FUNC1(eset->bitmap,
	    &eset_bitmap_info, (size_t)pind);
	    i < SC_NPSIZES + 1;
	    i = (pszind_t)FUNC1(eset->bitmap, &eset_bitmap_info,
	    (size_t)i+1)) {
		FUNC0(!FUNC2(&eset->heaps[i]));
		extent_t *extent = FUNC3(&eset->heaps[i]);
		FUNC0(FUNC4(extent) >= size);
		/*
		 * In order to reduce fragmentation, avoid reusing and splitting
		 * large eset for much smaller sizes.
		 *
		 * Only do check for dirty eset (delay_coalesce).
		 */
		if (eset->delay_coalesce &&
		    (FUNC6(i) >> opt_lg_extent_max_active_fit) > size) {
			break;
		}
		if (ret == NULL || FUNC5(extent, ret) < 0) {
			ret = extent;
		}
		if (i == SC_NPSIZES) {
			break;
		}
		FUNC0(i < SC_NPSIZES);
	}

	return ret;
}