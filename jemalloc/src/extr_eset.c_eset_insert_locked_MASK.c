#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t pszind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  npages; int /*<<< orphan*/  lru; int /*<<< orphan*/ * heaps; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ eset_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 size_t LG_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  eset_bitmap_info ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC11 (size_t) ; 
 size_t FUNC12 (size_t) ; 

void
FUNC13(tsdn_t *tsdn, eset_t *eset, extent_t *extent) {
	FUNC10(tsdn, &eset->mtx);
	FUNC0(FUNC9(extent) == eset->state);

	size_t size = FUNC8(extent);
	size_t psz = FUNC12(size);
	pszind_t pind = FUNC11(psz);
	if (FUNC5(&eset->heaps[pind])) {
		FUNC3(eset->bitmap, &eset_bitmap_info,
		    (size_t)pind);
	}
	FUNC6(&eset->heaps[pind], extent);

	if (config_stats) {
		FUNC4(eset, pind, size);
	}

	FUNC7(&eset->lru, extent);
	size_t npages = size >> LG_PAGE;
	/*
	 * All modifications to npages hold the mutex (as asserted above), so we
	 * don't need an atomic fetch-add; we can get by with a load followed by
	 * a store.
	 */
	size_t cur_eset_npages =
	    FUNC1(&eset->npages, ATOMIC_RELAXED);
	FUNC2(&eset->npages, cur_eset_npages + npages,
	    ATOMIC_RELAXED);
}