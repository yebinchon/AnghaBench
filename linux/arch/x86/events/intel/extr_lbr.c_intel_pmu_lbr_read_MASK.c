#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpu_hw_events {scalar_t__ lbr_users; scalar_t__ lbr_pebs_users; } ;
struct TYPE_3__ {scalar_t__ lbr_format; } ;
struct TYPE_4__ {TYPE_1__ intel_cap; } ;

/* Variables and functions */
 scalar_t__ LBR_FORMAT_32 ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (struct cpu_hw_events*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_hw_events*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_hw_events*) ; 
 struct cpu_hw_events* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ x86_pmu ; 

void FUNC4(void)
{
	struct cpu_hw_events *cpuc = FUNC3(&cpu_hw_events);

	/*
	 * Don't read when all LBRs users are using adaptive PEBS.
	 *
	 * This could be smarter and actually check the event,
	 * but this simple approach seems to work for now.
	 */
	if (!cpuc->lbr_users || cpuc->lbr_users == cpuc->lbr_pebs_users)
		return;

	if (x86_pmu.intel_cap.lbr_format == LBR_FORMAT_32)
		FUNC1(cpuc);
	else
		FUNC2(cpuc);

	FUNC0(cpuc);
}