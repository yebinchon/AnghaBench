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
struct arch_tlbflush_unmap_batch {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLB_LOCAL_SHOOTDOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  full_flush_tlb_info ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(struct arch_tlbflush_unmap_batch *batch)
{
	int cpu = FUNC5();

	if (FUNC2(cpu, &batch->cpumask)) {
		FUNC8();
		FUNC6();
		FUNC3(&full_flush_tlb_info, TLB_LOCAL_SHOOTDOWN);
		FUNC7();
	}

	if (FUNC0(&batch->cpumask, cpu) < nr_cpu_ids)
		FUNC4(&batch->cpumask, &full_flush_tlb_info);

	FUNC1(&batch->cpumask);

	FUNC9();
}