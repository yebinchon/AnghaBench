#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  pszind_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_6__ {int /*<<< orphan*/  mtx; scalar_t__ auto_thp_switched; } ;
typedef  TYPE_1__ base_t ;
struct TYPE_7__ {size_t size; int /*<<< orphan*/  extent; int /*<<< orphan*/ * next; } ;
typedef  TYPE_2__ base_block_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 uintptr_t HUGEPAGE_MASK ; 
 size_t QUANTUM ; 
 size_t SC_LARGE_MAXCLASS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int /*<<< orphan*/ *,void*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ metadata_thp_always ; 
 scalar_t__ metadata_thp_auto ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ opt_metadata_thp ; 
 int /*<<< orphan*/  FUNC9 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (size_t) ; 

__attribute__((used)) static base_block_t *
FUNC13(tsdn_t *tsdn, base_t *base, extent_hooks_t *extent_hooks,
    unsigned ind, pszind_t *pind_last, size_t *extent_sn_next, size_t size,
    size_t alignment) {
	alignment = FUNC0(alignment, QUANTUM);
	size_t usize = FUNC0(size, alignment);
	size_t header_size = sizeof(base_block_t);
	size_t gap_size = FUNC0(header_size, alignment) -
	    header_size;
	/*
	 * Create increasingly larger blocks in order to limit the total number
	 * of disjoint virtual memory ranges.  Choose the next size in the page
	 * size class series (skipping size classes that are not a multiple of
	 * HUGEPAGE), or a size large enough to satisfy the requested size and
	 * alignment, whichever is larger.
	 */
	size_t min_block_size = FUNC1(FUNC12(header_size + gap_size
	    + usize));
	pszind_t pind_next = (*pind_last + 1 < FUNC11(SC_LARGE_MAXCLASS)) ?
	    *pind_last + 1 : *pind_last;
	size_t next_block_size = FUNC1(FUNC10(pind_next));
	size_t block_size = (min_block_size > next_block_size) ? min_block_size
	    : next_block_size;
	base_block_t *block = (base_block_t *)FUNC5(tsdn, extent_hooks, ind,
	    block_size);
	if (block == NULL) {
		return NULL;
	}

	if (FUNC8()) {
		void *addr = (void *)block;
		FUNC2(((uintptr_t)addr & HUGEPAGE_MASK) == 0 &&
		    (block_size & HUGEPAGE_MASK) == 0);
		if (opt_metadata_thp == metadata_thp_always) {
			FUNC9(addr, block_size);
		} else if (opt_metadata_thp == metadata_thp_auto &&
		    base != NULL) {
			/* base != NULL indicates this is not a new base. */
			FUNC6(tsdn, &base->mtx);
			FUNC3(tsdn, base);
			if (base->auto_thp_switched) {
				FUNC9(addr, block_size);
			}
			FUNC7(tsdn, &base->mtx);
		}
	}

	*pind_last = FUNC11(block_size);
	block->size = block_size;
	block->next = NULL;
	FUNC2(block_size >= header_size);
	FUNC4(extent_sn_next, &block->extent,
	    (void *)((uintptr_t)block + header_size), block_size - header_size);
	return block;
}