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
struct flush_tlb_info {scalar_t__ end; scalar_t__ start; scalar_t__ freed_tables; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NR_TLB_REMOTE_FLUSH ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ TLB_FLUSH_ALL ; 
 int /*<<< orphan*/  TLB_REMOTE_SEND_IPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flush_tlb_func_remote ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpumask const*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  tlb_is_not_lazy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct cpumask* FUNC5 (struct cpumask const*,struct flush_tlb_info const*) ; 

void FUNC6(const struct cpumask *cpumask,
			     const struct flush_tlb_info *info)
{
	FUNC0(NR_TLB_REMOTE_FLUSH);
	if (info->end == TLB_FLUSH_ALL)
		FUNC4(TLB_REMOTE_SEND_IPI, TLB_FLUSH_ALL);
	else
		FUNC4(TLB_REMOTE_SEND_IPI,
				(info->end - info->start) >> PAGE_SHIFT);

	if (FUNC1()) {
		/*
		 * This whole special case is confused.  UV has a "Broadcast
		 * Assist Unit", which seems to be a fancy way to send IPIs.
		 * Back when x86 used an explicit TLB flush IPI, UV was
		 * optimized to use its own mechanism.  These days, x86 uses
		 * smp_call_function_many(), but UV still uses a manual IPI,
		 * and that IPI's action is out of date -- it does a manual
		 * flush instead of calling flush_tlb_func_remote().  This
		 * means that the percpu tlb_gen variables won't be updated
		 * and we'll do pointless flushes on future context switches.
		 *
		 * Rather than hooking native_flush_tlb_others() here, I think
		 * that UV should be updated so that smp_call_function_many(),
		 * etc, are optimal on UV.
		 */
		cpumask = FUNC5(cpumask, info);
		if (cpumask)
			FUNC3(cpumask, flush_tlb_func_remote,
					       (void *)info, 1);
		return;
	}

	/*
	 * If no page tables were freed, we can skip sending IPIs to
	 * CPUs in lazy TLB mode. They will flush the CPU themselves
	 * at the next context switch.
	 *
	 * However, if page tables are getting freed, we need to send the
	 * IPI everywhere, to prevent CPUs in lazy TLB mode from tripping
	 * up on the new contents of what used to be page tables, while
	 * doing a speculative memory access.
	 */
	if (info->freed_tables)
		FUNC3(cpumask, flush_tlb_func_remote,
			       (void *)info, 1);
	else
		FUNC2(tlb_is_not_lazy, flush_tlb_func_remote,
				(void *)info, 1, GFP_ATOMIC, cpumask);
}