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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pseudo_lock_region {unsigned long size; int thread_done; int /*<<< orphan*/  lock_thread_wq; int /*<<< orphan*/  kmem; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_MISC_FEATURE_CONTROL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int prefetch_disable_bits ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(void *_plr)
{
	struct pseudo_lock_region *plr = _plr;
	unsigned long i;
	u64 start, end;
	void *mem_r;

	FUNC1();
	/*
	 * Disable hardware prefetchers.
	 */
	FUNC6(MSR_MISC_FEATURE_CONTROL, prefetch_disable_bits, 0x0);
	mem_r = FUNC0(plr->kmem);
	/*
	 * Dummy execute of the time measurement to load the needed
	 * instructions into the L1 instruction cache.
	 */
	start = FUNC3();
	for (i = 0; i < plr->size; i += 32) {
		start = FUNC3();
		asm volatile("mov (%0,%1,1), %%eax\n\t"
			     :
			     : "r" (mem_r), "r" (i)
			     : "%eax", "memory");
		end = FUNC3();
		FUNC4((u32)(end - start));
	}
	FUNC6(MSR_MISC_FEATURE_CONTROL, 0x0, 0x0);
	FUNC2();
	plr->thread_done = 1;
	FUNC5(&plr->lock_thread_wq);
	return 0;
}