#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct pt {int /*<<< orphan*/  vmx_on; } ;
struct TYPE_2__ {int /*<<< orphan*/  config; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_RTIT_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RTIT_CTL_TRACEEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pt_ctx ; 
 struct pt* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event)
{
	struct pt *pt = FUNC2(&pt_ctx);
	u64 ctl = FUNC0(event->hw.config);

	/* may be already stopped by a PMI */
	if (!(ctl & RTIT_CTL_TRACEEN))
		return;

	ctl &= ~RTIT_CTL_TRACEEN;
	if (!FUNC0(pt->vmx_on))
		FUNC4(MSR_IA32_RTIT_CTL, ctl);

	FUNC1(event->hw.config, ctl);

	/*
	 * A wrmsr that disables trace generation serializes other PT
	 * registers and causes all data packets to be written to memory,
	 * but a fence is required for the data to become globally visible.
	 *
	 * The below WMB, separating data store and aux_head store matches
	 * the consumer's RMB that separates aux_head load and data load.
	 */
	FUNC3();
}