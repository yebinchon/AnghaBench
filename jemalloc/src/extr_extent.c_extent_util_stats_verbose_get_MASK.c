#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_7__ {size_t curslabs; size_t curregs; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  slabs_nonfull; int /*<<< orphan*/ * slabcur; TYPE_2__ stats; } ;
typedef  TYPE_3__ bin_t ;
struct TYPE_9__ {TYPE_1__* bins; } ;
typedef  TYPE_4__ arena_t ;
struct TYPE_10__ {size_t nregs; } ;
struct TYPE_6__ {TYPE_3__* bin_shards; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/ * arenas ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* bin_infos ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/  const*) ; 
 size_t FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 size_t FUNC9 (int /*<<< orphan*/  const*) ; 
 size_t FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

void
FUNC15(tsdn_t *tsdn, const void *ptr,
    size_t *nfree, size_t *nregs, size_t *size,
    size_t *bin_nfree, size_t *bin_nregs, void **slabcur_addr) {
	FUNC0(ptr != NULL && nfree != NULL && nregs != NULL && size != NULL
	    && bin_nfree != NULL && bin_nregs != NULL && slabcur_addr != NULL);

	const extent_t *extent = FUNC11(tsdn, ptr);
	if (FUNC14(extent == NULL)) {
		*nfree = *nregs = *size = *bin_nfree = *bin_nregs = 0;
		*slabcur_addr = NULL;
		return;
	}

	*size = FUNC7(extent);
	if (!FUNC8(extent)) {
		*nfree = *bin_nfree = *bin_nregs = 0;
		*nregs = 1;
		*slabcur_addr = NULL;
		return;
	}

	*nfree = FUNC6(extent);
	const szind_t szind = FUNC9(extent);
	*nregs = bin_infos[szind].nregs;
	FUNC0(*nfree <= *nregs);
	FUNC0(*nfree * FUNC10(extent) <= *size);

	const arena_t *arena = (arena_t *)FUNC1(
	    &arenas[FUNC3(extent)], ATOMIC_RELAXED);
	FUNC0(arena != NULL);
	const unsigned binshard = FUNC4(extent);
	bin_t *bin = &arena->bins[szind].bin_shards[binshard];

	FUNC12(tsdn, &bin->lock);
	if (config_stats) {
		*bin_nregs = *nregs * bin->stats.curslabs;
		FUNC0(*bin_nregs >= bin->stats.curregs);
		*bin_nfree = *bin_nregs - bin->stats.curregs;
	} else {
		*bin_nfree = *bin_nregs = 0;
	}
	extent_t *slab;
	if (bin->slabcur != NULL) {
		slab = bin->slabcur;
	} else {
		slab = FUNC5(&bin->slabs_nonfull);
	}
	*slabcur_addr = slab != NULL ? FUNC2(slab) : NULL;
	FUNC13(tsdn, &bin->lock);
}