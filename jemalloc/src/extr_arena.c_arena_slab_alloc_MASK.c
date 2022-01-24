#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  szind_t ;
struct TYPE_12__ {int /*<<< orphan*/  bitmap; } ;
typedef  TYPE_1__ slab_data_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_13__ {int /*<<< orphan*/  bitmap_info; int /*<<< orphan*/  nregs; int /*<<< orphan*/  slab_size; int /*<<< orphan*/  reg_size; } ;
typedef  TYPE_2__ bin_info_t ;
struct TYPE_14__ {int /*<<< orphan*/  eset_muzzy; int /*<<< orphan*/  eset_dirty; } ;
typedef  TYPE_3__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/ * EXTENT_HOOKS_INITIALIZER ; 
 int LG_PAGE ; 
 int /*<<< orphan*/  PAGE ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ **,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static extent_t *
FUNC13(tsdn_t *tsdn, arena_t *arena, szind_t binind, unsigned binshard,
    const bin_info_t *bin_info) {
	FUNC12(FUNC11(tsdn),
	    WITNESS_RANK_CORE, 0);

	extent_hooks_t *extent_hooks = EXTENT_HOOKS_INITIALIZER;
	szind_t szind = FUNC10(bin_info->reg_size);
	bool zero = false;
	bool commit = true;
	extent_t *slab = FUNC9(tsdn, arena, &extent_hooks,
	    &arena->eset_dirty, NULL, bin_info->slab_size, 0, PAGE, true,
	    binind, &zero, &commit);
	if (slab == NULL && FUNC0(arena)) {
		slab = FUNC9(tsdn, arena, &extent_hooks,
		    &arena->eset_muzzy, NULL, bin_info->slab_size, 0, PAGE,
		    true, binind, &zero, &commit);
	}
	if (slab == NULL) {
		slab = FUNC2(tsdn, arena, &extent_hooks,
		    bin_info, szind);
		if (slab == NULL) {
			return NULL;
		}
	}
	FUNC3(FUNC8(slab));

	/* Initialize slab internals. */
	slab_data_t *slab_data = FUNC7(slab);
	FUNC5(slab, bin_info->nregs, binshard);
	FUNC4(slab_data->bitmap, &bin_info->bitmap_info, false);

	FUNC1(arena, FUNC6(slab) >> LG_PAGE);

	return slab;
}