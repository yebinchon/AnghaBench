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
struct flusher_data {int addr1; int addr2; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_IC_ADDRESS_ARRAY ; 
 int CCR_ICACHE_INVALIDATE ; 
 int L1_CACHE_BYTES ; 
 unsigned long MAX_ICACHE_PAGES ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  SH_CCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC8(void *args)
{
	struct flusher_data *data = args;
	unsigned long start, end;
	unsigned long v;
	unsigned long flags;

	start = data->addr1 & ~(L1_CACHE_BYTES-1);
	end = (data->addr2 + L1_CACHE_BYTES-1) & ~(L1_CACHE_BYTES-1);

#ifdef CONFIG_CACHE_WRITEBACK
	sh2a__flush_wback_region((void *)start, end-start);
#endif

	FUNC5(flags);
	FUNC3();

	/* I-Cache invalidate */
	/* If there are too many pages then just blow the cache */
	if (((end - start) >> PAGE_SHIFT) >= MAX_ICACHE_PAGES) {
		FUNC1(FUNC0(SH_CCR) | CCR_ICACHE_INVALIDATE,
			     SH_CCR);
	} else {
		for (v = start; v < end; v += L1_CACHE_BYTES)
			FUNC7(CACHE_IC_ADDRESS_ARRAY, v);
	}

	FUNC2();
	FUNC4(flags);
}