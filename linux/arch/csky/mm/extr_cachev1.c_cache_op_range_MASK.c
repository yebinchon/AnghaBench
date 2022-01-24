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
 unsigned int CACHE_CLR ; 
 unsigned int CACHE_OMS ; 
 int CCR2_L2E ; 
 int L1_CACHE_BYTES ; 
 unsigned int LOWMEM_LIMIT ; 
 unsigned int PAGE_OFFSET ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  cache_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(
	unsigned int start,
	unsigned int end,
	unsigned int value,
	unsigned int l2)
{
	unsigned long i, flags;
	unsigned int val = value | CACHE_CLR | CACHE_OMS;
	bool l2_sync;

	if (FUNC7((end - start) >= PAGE_SIZE) ||
	    FUNC7(start < PAGE_OFFSET) ||
	    FUNC7(start >= PAGE_OFFSET + LOWMEM_LIMIT)) {
		FUNC0(value, l2);
		return;
	}

	if ((FUNC3() & CCR2_L2E) && l2)
		l2_sync = 1;
	else
		l2_sync = 0;

	FUNC5(&cache_lock, flags);

	i = start & ~(L1_CACHE_BYTES - 1);
	for (; i < end; i += L1_CACHE_BYTES) {
		FUNC1(i, val);
		if (l2_sync) {
			FUNC2();
			FUNC4("cr24", val);
		}
	}
	FUNC6(&cache_lock, flags);

	FUNC2();
}