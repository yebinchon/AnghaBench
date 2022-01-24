#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ bin_t ;
struct TYPE_10__ {TYPE_1__* bins; } ;
typedef  TYPE_3__ arena_t ;
struct TYPE_12__ {unsigned int n_shards; } ;
struct TYPE_11__ {unsigned int* binshard; } ;
struct TYPE_8__ {TYPE_2__* bin_shards; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* bin_infos ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bin_t *
FUNC6(tsdn_t *tsdn, arena_t *arena, szind_t binind,
    unsigned *binshard) {
	bin_t *bin;
	if (FUNC4(tsdn) || FUNC2(FUNC5(tsdn)) == NULL) {
		*binshard = 0;
	} else {
		*binshard = FUNC3(FUNC5(tsdn))->binshard[binind];
	}
	FUNC0(*binshard < bin_infos[binind].n_shards);
	bin = &arena->bins[binind].bin_shards[*binshard];
	FUNC1(tsdn, &bin->lock);

	return bin;
}