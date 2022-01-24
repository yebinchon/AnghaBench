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
typedef  int u64 ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ cheetah ; 
 scalar_t__ cheetah_plus ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  dcpage_flushes ; 
 int /*<<< orphan*/  dcpage_flushes_xcall ; 
 int FUNC5 () ; 
 scalar_t__ hypervisor ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/ * FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ spitfire ; 
 scalar_t__ tlb_type ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xcall_flush_dcache_page_cheetah ; 
 int /*<<< orphan*/  xcall_flush_dcache_page_spitfire ; 

void FUNC10(struct page *page, int cpu)
{
	int this_cpu;

	if (tlb_type == hypervisor)
		return;

#ifdef CONFIG_DEBUG_DCFLUSH
	atomic_inc(&dcpage_flushes);
#endif

	this_cpu = FUNC5();

	if (cpu == this_cpu) {
		FUNC0(page);
	} else if (FUNC3(cpu)) {
		void *pg_addr = FUNC6(page);
		u64 data0 = 0;

		if (tlb_type == spitfire) {
			data0 = ((u64)&xcall_flush_dcache_page_spitfire);
			if (FUNC7(page) != NULL)
				data0 |= ((u64)1 << 32);
		} else if (tlb_type == cheetah || tlb_type == cheetah_plus) {
#ifdef DCACHE_ALIASING_POSSIBLE
			data0 =	((u64)&xcall_flush_dcache_page_cheetah);
#endif
		}
		if (data0) {
			FUNC9(data0, FUNC1(pg_addr),
				      (u64) pg_addr, FUNC4(cpu));
#ifdef CONFIG_DEBUG_DCFLUSH
			atomic_inc(&dcpage_flushes_xcall);
#endif
		}
	}

	FUNC8();
}