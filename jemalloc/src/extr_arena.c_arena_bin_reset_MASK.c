#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {scalar_t__ curslabs; scalar_t__ curregs; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__ stats; int /*<<< orphan*/  slabs_full; int /*<<< orphan*/  slabs_nonfull; int /*<<< orphan*/ * slabcur; } ;
typedef  TYPE_2__ bin_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(tsd_t *tsd, arena_t *arena, bin_t *bin) {
	extent_t *slab;

	FUNC4(FUNC6(tsd), &bin->lock);
	if (bin->slabcur != NULL) {
		slab = bin->slabcur;
		bin->slabcur = NULL;
		FUNC5(FUNC6(tsd), &bin->lock);
		FUNC1(FUNC6(tsd), arena, slab);
		FUNC4(FUNC6(tsd), &bin->lock);
	}
	while ((slab = FUNC2(&bin->slabs_nonfull)) != NULL) {
		FUNC5(FUNC6(tsd), &bin->lock);
		FUNC1(FUNC6(tsd), arena, slab);
		FUNC4(FUNC6(tsd), &bin->lock);
	}
	for (slab = FUNC3(&bin->slabs_full); slab != NULL;
	     slab = FUNC3(&bin->slabs_full)) {
		FUNC0(arena, bin, slab);
		FUNC5(FUNC6(tsd), &bin->lock);
		FUNC1(FUNC6(tsd), arena, slab);
		FUNC4(FUNC6(tsd), &bin->lock);
	}
	if (config_stats) {
		bin->stats.curregs = 0;
		bin->stats.curslabs = 0;
	}
	FUNC5(FUNC6(tsd), &bin->lock);
}