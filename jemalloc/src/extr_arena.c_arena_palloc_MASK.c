#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tcache_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t CACHELINE ; 
 size_t PAGE ; 
 size_t PAGE_MASK ; 
 size_t SC_SMALL_MAXCLASS ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 

void *
FUNC5(tsdn_t *tsdn, arena_t *arena, size_t usize, size_t alignment,
    bool zero, tcache_t *tcache) {
	void *ret;

	if (usize <= SC_SMALL_MAXCLASS
	    && (alignment < PAGE
	    || (alignment == PAGE && (usize & PAGE_MASK) == 0))) {
		/* Small; alignment doesn't require special slab placement. */
		ret = FUNC0(tsdn, arena, usize, FUNC4(usize),
		    zero, tcache, true);
	} else {
		if (FUNC3(alignment <= CACHELINE)) {
			ret = FUNC1(tsdn, arena, usize, zero);
		} else {
			ret = FUNC2(tsdn, arena, usize, alignment, zero);
		}
	}
	return ret;
}