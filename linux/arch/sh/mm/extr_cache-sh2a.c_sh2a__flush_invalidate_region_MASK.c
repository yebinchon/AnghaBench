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

/* Variables and functions */
 int /*<<< orphan*/  CACHE_OC_ADDRESS_ARRAY ; 
 int CCR_OCACHE_INVALIDATE ; 
 int L1_CACHE_BYTES ; 
 unsigned long MAX_OCACHE_PAGES ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  SH_CCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC7(void *start, int size)
{
	unsigned long v;
	unsigned long begin, end;
	unsigned long flags;

	begin = (unsigned long)start & ~(L1_CACHE_BYTES-1);
	end = ((unsigned long)start + size + L1_CACHE_BYTES-1)
		& ~(L1_CACHE_BYTES-1);

	FUNC5(flags);
	FUNC3();

	/* If there are too many pages then just blow the cache */
	if (((end - begin) >> PAGE_SHIFT) >= MAX_OCACHE_PAGES) {
		FUNC1(FUNC0(SH_CCR) | CCR_OCACHE_INVALIDATE,
			     SH_CCR);
	} else {
		for (v = begin; v < end; v += L1_CACHE_BYTES)
			FUNC6(CACHE_OC_ADDRESS_ARRAY, v);
	}

	FUNC2();
	FUNC4(flags);
}