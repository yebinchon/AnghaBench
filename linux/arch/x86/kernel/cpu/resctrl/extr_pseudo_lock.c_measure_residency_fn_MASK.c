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
typedef  void* u64 ;
struct residency_counts {void* hits_after; void* miss_after; void* hits_before; void* miss_before; } ;
struct pseudo_lock_region {int /*<<< orphan*/  size; int /*<<< orphan*/  kmem; int /*<<< orphan*/  line_size; int /*<<< orphan*/  cpu; } ;
struct perf_event_attr {int dummy; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  MSR_MISC_FEATURE_CONTROL ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct perf_event* FUNC4 (struct perf_event_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct perf_event*,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 int prefetch_disable_bits ; 
 int /*<<< orphan*/  FUNC7 (int,void*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (struct perf_event*) ; 

__attribute__((used)) static int FUNC11(struct perf_event_attr *miss_attr,
				struct perf_event_attr *hit_attr,
				struct pseudo_lock_region *plr,
				struct residency_counts *counts)
{
	u64 hits_before = 0, hits_after = 0, miss_before = 0, miss_after = 0;
	struct perf_event *miss_event, *hit_event;
	int hit_pmcnum, miss_pmcnum;
	unsigned int line_size;
	unsigned int size;
	unsigned long i;
	void *mem_r;
	u64 tmp;

	miss_event = FUNC4(miss_attr, plr->cpu,
						      NULL, NULL, NULL);
	if (FUNC0(miss_event))
		goto out;

	hit_event = FUNC4(hit_attr, plr->cpu,
						     NULL, NULL, NULL);
	if (FUNC0(hit_event))
		goto out_miss;

	FUNC2();
	/*
	 * Check any possible error state of events used by performing
	 * one local read.
	 */
	if (FUNC5(miss_event, &tmp, NULL, NULL)) {
		FUNC3();
		goto out_hit;
	}
	if (FUNC5(hit_event, &tmp, NULL, NULL)) {
		FUNC3();
		goto out_hit;
	}

	/*
	 * Disable hardware prefetchers.
	 */
	FUNC9(MSR_MISC_FEATURE_CONTROL, prefetch_disable_bits, 0x0);

	/* Initialize rest of local variables */
	/*
	 * Performance event has been validated right before this with
	 * interrupts disabled - it is thus safe to read the counter index.
	 */
	miss_pmcnum = FUNC10(miss_event);
	hit_pmcnum = FUNC10(hit_event);
	line_size = FUNC1(plr->line_size);
	mem_r = FUNC1(plr->kmem);
	size = FUNC1(plr->size);

	/*
	 * Read counter variables twice - first to load the instructions
	 * used in L1 cache, second to capture accurate value that does not
	 * include cache misses incurred because of instruction loads.
	 */
	FUNC7(hit_pmcnum, hits_before);
	FUNC7(miss_pmcnum, miss_before);
	/*
	 * From SDM: Performing back-to-back fast reads are not guaranteed
	 * to be monotonic.
	 * Use LFENCE to ensure all previous instructions are retired
	 * before proceeding.
	 */
	FUNC8();
	FUNC7(hit_pmcnum, hits_before);
	FUNC7(miss_pmcnum, miss_before);
	/*
	 * Use LFENCE to ensure all previous instructions are retired
	 * before proceeding.
	 */
	FUNC8();
	for (i = 0; i < size; i += line_size) {
		/*
		 * Add a barrier to prevent speculative execution of this
		 * loop reading beyond the end of the buffer.
		 */
		FUNC8();
		asm volatile("mov (%0,%1,1), %%eax\n\t"
			     :
			     : "r" (mem_r), "r" (i)
			     : "%eax", "memory");
	}
	/*
	 * Use LFENCE to ensure all previous instructions are retired
	 * before proceeding.
	 */
	FUNC8();
	FUNC7(hit_pmcnum, hits_after);
	FUNC7(miss_pmcnum, miss_after);
	/*
	 * Use LFENCE to ensure all previous instructions are retired
	 * before proceeding.
	 */
	FUNC8();
	/* Re-enable hardware prefetchers */
	FUNC9(MSR_MISC_FEATURE_CONTROL, 0x0, 0x0);
	FUNC3();
out_hit:
	FUNC6(hit_event);
out_miss:
	FUNC6(miss_event);
out:
	/*
	 * All counts will be zero on failure.
	 */
	counts->miss_before = miss_before;
	counts->hits_before = hits_before;
	counts->miss_after  = miss_after;
	counts->hits_after  = hits_after;
	return 0;
}