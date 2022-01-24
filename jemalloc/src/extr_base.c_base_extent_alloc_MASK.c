#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_8__ {scalar_t__ allocated; scalar_t__ resident; int mapped; int n_thp; int /*<<< orphan*/  auto_thp_switched; TYPE_2__* blocks; int /*<<< orphan*/  mtx; int /*<<< orphan*/  extent_sn_next; int /*<<< orphan*/  pind_last; } ;
typedef  TYPE_1__ base_t ;
struct TYPE_9__ {int /*<<< orphan*/  extent; scalar_t__ size; struct TYPE_9__* next; } ;
typedef  TYPE_2__ base_block_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int LG_HUGEPAGE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ metadata_thp_auto ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ opt_metadata_thp ; 

__attribute__((used)) static extent_t *
FUNC10(tsdn_t *tsdn, base_t *base, size_t size, size_t alignment) {
	FUNC6(tsdn, &base->mtx);

	extent_hooks_t *extent_hooks = FUNC4(base);
	/*
	 * Drop mutex during base_block_alloc(), because an extent hook will be
	 * called.
	 */
	FUNC8(tsdn, &base->mtx);
	base_block_t *block = FUNC3(tsdn, base, extent_hooks,
	    FUNC5(base), &base->pind_last, &base->extent_sn_next, size,
	    alignment);
	FUNC7(tsdn, &base->mtx);
	if (block == NULL) {
		return NULL;
	}
	block->next = base->blocks;
	base->blocks = block;
	if (config_stats) {
		base->allocated += sizeof(base_block_t);
		base->resident += FUNC1(sizeof(base_block_t));
		base->mapped += block->size;
		if (FUNC9() &&
		    !(opt_metadata_thp == metadata_thp_auto
		      && !base->auto_thp_switched)) {
			FUNC2(base->n_thp > 0);
			base->n_thp += FUNC0(sizeof(base_block_t)) >>
			    LG_HUGEPAGE;
		}
		FUNC2(base->allocated <= base->resident);
		FUNC2(base->resident <= base->mapped);
		FUNC2(base->n_thp << LG_HUGEPAGE <= base->mapped);
	}
	return &block->extent;
}