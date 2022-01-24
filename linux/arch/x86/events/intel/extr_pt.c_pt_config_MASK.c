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
typedef  int u64 ;
struct pt {int /*<<< orphan*/  handle; int /*<<< orphan*/  vmx_on; } ;
struct TYPE_4__ {int config; } ;
struct TYPE_3__ {int config; int /*<<< orphan*/  exclude_user; int /*<<< orphan*/  exclude_kernel; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__ attr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSR_IA32_RTIT_CTL ; 
 int /*<<< orphan*/  MSR_IA32_RTIT_STATUS ; 
 int /*<<< orphan*/  PERF_AUX_FLAG_PARTIAL ; 
 int PT_CONFIG_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int RTIT_CTL_BRANCH_EN ; 
 int RTIT_CTL_OS ; 
 int RTIT_CTL_TOPA ; 
 int RTIT_CTL_TRACEEN ; 
 int RTIT_CTL_USR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  pt_ctx ; 
 struct pt* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event)
{
	struct pt *pt = FUNC5(&pt_ctx);
	u64 reg;

	/* First round: clear STATUS, in particular the PSB byte counter. */
	if (!event->hw.config) {
		FUNC3(event);
		FUNC6(MSR_IA32_RTIT_STATUS, 0);
	}

	reg = FUNC4(event);
	reg |= RTIT_CTL_TOPA | RTIT_CTL_TRACEEN;

	/*
	 * Previously, we had BRANCH_EN on by default, but now that PT has
	 * grown features outside of branch tracing, it is useful to allow
	 * the user to disable it. Setting bit 0 in the event's attr.config
	 * allows BRANCH_EN to pass through instead of being always on. See
	 * also the comment in pt_event_valid().
	 */
	if (event->attr.config & FUNC0(0)) {
		reg |= event->attr.config & RTIT_CTL_BRANCH_EN;
	} else {
		reg |= RTIT_CTL_BRANCH_EN;
	}

	if (!event->attr.exclude_kernel)
		reg |= RTIT_CTL_OS;
	if (!event->attr.exclude_user)
		reg |= RTIT_CTL_USR;

	reg |= (event->attr.config & PT_CONFIG_MASK);

	event->hw.config = reg;
	if (FUNC1(pt->vmx_on))
		FUNC2(&pt->handle, PERF_AUX_FLAG_PARTIAL);
	else
		FUNC6(MSR_IA32_RTIT_CTL, reg);
}