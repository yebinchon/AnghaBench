#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ bin_t ;
struct TYPE_9__ {TYPE_1__* bins; } ;
typedef  TYPE_3__ arena_t ;
struct TYPE_7__ {TYPE_2__* bin_shards; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*,size_t,int /*<<< orphan*/ *,void*,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(tsdn_t *tsdn, arena_t *arena, extent_t *extent, void *ptr) {
	szind_t binind = FUNC2(extent);
	unsigned binshard = FUNC1(extent);
	bin_t *bin = &arena->bins[binind].bin_shards[binshard];

	FUNC3(tsdn, &bin->lock);
	FUNC0(tsdn, arena, bin, binind, extent, ptr,
	    false);
	FUNC4(tsdn, &bin->lock);
}