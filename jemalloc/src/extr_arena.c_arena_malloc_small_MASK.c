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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {int /*<<< orphan*/  curregs; int /*<<< orphan*/  nrequests; int /*<<< orphan*/  nmalloc; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__ stats; int /*<<< orphan*/ * slabcur; } ;
typedef  TYPE_2__ bin_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t SC_NBINS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,unsigned int*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * bin_infos ; 
 scalar_t__ config_fill ; 
 scalar_t__ config_stats ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  opt_junk_alloc ; 
 int /*<<< orphan*/  opt_zero ; 
 size_t FUNC9 (size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC11(tsdn_t *tsdn, arena_t *arena, szind_t binind, bool zero) {
	void *ret;
	bin_t *bin;
	size_t usize;
	extent_t *slab;

	FUNC5(binind < SC_NBINS);
	usize = FUNC9(binind);
	unsigned binshard;
	bin = FUNC1(tsdn, arena, binind, &binshard);

	if ((slab = bin->slabcur) != NULL && FUNC6(slab) > 0) {
		ret = FUNC4(slab, &bin_infos[binind]);
	} else {
		ret = FUNC2(tsdn, arena, bin, binind, binshard);
	}

	if (ret == NULL) {
		FUNC7(tsdn, &bin->lock);
		return NULL;
	}

	if (config_stats) {
		bin->stats.nmalloc++;
		bin->stats.nrequests++;
		bin->stats.curregs++;
	}

	FUNC7(tsdn, &bin->lock);

	if (!zero) {
		if (config_fill) {
			if (FUNC10(opt_junk_alloc)) {
				FUNC0(ret,
				    &bin_infos[binind], false);
			} else if (FUNC10(opt_zero)) {
				FUNC8(ret, 0, usize);
			}
		}
	} else {
		if (config_fill && FUNC10(opt_junk_alloc)) {
			FUNC0(ret, &bin_infos[binind],
			    true);
		}
		FUNC8(ret, 0, usize);
	}

	FUNC3(tsdn, arena);
	return ret;
}