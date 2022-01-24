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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ cheetah ; 
 scalar_t__ cheetah_plus ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  dcpage_flushes ; 
 int /*<<< orphan*/  dcpage_flushes_xcall ; 
 scalar_t__ hypervisor ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/ * FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ spitfire ; 
 scalar_t__ tlb_type ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xcall_flush_dcache_page_cheetah ; 
 int /*<<< orphan*/  xcall_flush_dcache_page_spitfire ; 

void FUNC8(struct mm_struct *mm, struct page *page)
{
	void *pg_addr;
	u64 data0;

	if (tlb_type == hypervisor)
		return;

	FUNC5();

#ifdef CONFIG_DEBUG_DCFLUSH
	atomic_inc(&dcpage_flushes);
#endif
	data0 = 0;
	pg_addr = FUNC3(page);
	if (tlb_type == spitfire) {
		data0 = ((u64)&xcall_flush_dcache_page_spitfire);
		if (FUNC4(page) != NULL)
			data0 |= ((u64)1 << 32);
	} else if (tlb_type == cheetah || tlb_type == cheetah_plus) {
#ifdef DCACHE_ALIASING_POSSIBLE
		data0 = ((u64)&xcall_flush_dcache_page_cheetah);
#endif
	}
	if (data0) {
		FUNC7(data0, FUNC1(pg_addr),
			      (u64) pg_addr, cpu_online_mask);
#ifdef CONFIG_DEBUG_DCFLUSH
		atomic_inc(&dcpage_flushes_xcall);
#endif
	}
	FUNC0(page);

	FUNC6();
}