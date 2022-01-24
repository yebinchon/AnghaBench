#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  slab_data_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_11__ {int /*<<< orphan*/  curregs; int /*<<< orphan*/  ndalloc; } ;
struct TYPE_12__ {TYPE_1__ stats; int /*<<< orphan*/ * slabcur; } ;
typedef  TYPE_2__ bin_t ;
struct TYPE_13__ {unsigned int nregs; } ;
typedef  TYPE_3__ bin_info_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 TYPE_3__* bin_infos ; 
 scalar_t__ config_fill ; 
 scalar_t__ config_stats ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opt_junk_free ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(tsdn_t *tsdn, arena_t *arena, bin_t *bin,
    szind_t binind, extent_t *slab, void *ptr, bool junked) {
	slab_data_t *slab_data = FUNC7(slab);
	const bin_info_t *bin_info = &bin_infos[binind];

	if (!junked && config_fill && FUNC8(opt_junk_free)) {
		FUNC3(ptr, bin_info);
	}

	FUNC5(slab, slab_data, ptr);
	unsigned nfree = FUNC6(slab);
	if (nfree == bin_info->nregs) {
		FUNC4(arena, slab, bin);
		FUNC2(tsdn, arena, slab, bin);
	} else if (nfree == 1 && slab != bin->slabcur) {
		FUNC1(arena, bin, slab);
		FUNC0(tsdn, arena, slab, bin);
	}

	if (config_stats) {
		bin->stats.ndalloc++;
		bin->stats.curregs--;
	}
}