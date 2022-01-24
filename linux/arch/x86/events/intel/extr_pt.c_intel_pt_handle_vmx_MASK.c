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
struct TYPE_6__ {struct perf_event* event; } ;
struct pt {TYPE_3__ handle; int /*<<< orphan*/  vmx_on; } ;
struct TYPE_4__ {int /*<<< orphan*/  config; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_5__ {scalar_t__ vmx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_RTIT_CTL ; 
 int /*<<< orphan*/  PERF_AUX_FLAG_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pt_ctx ; 
 TYPE_2__ pt_pmu ; 
 struct pt* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(int on)
{
	struct pt *pt = FUNC4(&pt_ctx);
	struct perf_event *event;
	unsigned long flags;

	/* PT plays nice with VMX, do nothing */
	if (pt_pmu.vmx)
		return;

	/*
	 * VMXON will clear RTIT_CTL.TraceEn; we need to make
	 * sure to not try to set it while VMX is on. Disable
	 * interrupts to avoid racing with pmu callbacks;
	 * concurrent PMI should be handled fine.
	 */
	FUNC2(flags);
	FUNC0(pt->vmx_on, on);

	/*
	 * If an AUX transaction is in progress, it will contain
	 * gap(s), so flag it PARTIAL to inform the user.
	 */
	event = pt->handle.event;
	if (event)
		FUNC3(&pt->handle,
		                     PERF_AUX_FLAG_PARTIAL);

	/* Turn PTs back on */
	if (!on && event)
		FUNC5(MSR_IA32_RTIT_CTL, event->hw.config);

	FUNC1(flags);
}