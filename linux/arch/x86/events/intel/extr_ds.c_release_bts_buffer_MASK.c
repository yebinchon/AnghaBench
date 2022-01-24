#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cpu_hw_events {int /*<<< orphan*/ * ds_bts_vaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  bts_buffer; } ;
struct TYPE_6__ {TYPE_1__ cpu_debug_buffers; } ;
struct TYPE_5__ {int /*<<< orphan*/  bts; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTS_BUFFER_SIZE ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int) ; 
 struct cpu_hw_events* FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ x86_pmu ; 

__attribute__((used)) static void FUNC4(int cpu)
{
	struct cpu_hw_events *hwev = FUNC3(&cpu_hw_events, cpu);
	void *cea;

	if (!x86_pmu.bts)
		return;

	/* Clear the fixmap */
	cea = &FUNC2(cpu)->cpu_debug_buffers.bts_buffer;
	FUNC0(cea, BTS_BUFFER_SIZE);
	FUNC1(hwev->ds_bts_vaddr, BTS_BUFFER_SIZE);
	hwev->ds_bts_vaddr = NULL;
}