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
struct vcpu_info {int /*<<< orphan*/  evtchn_upcall_pending; scalar_t__ evtchn_upcall_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct vcpu_info* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  xen_vcpu ; 

void FUNC6(void)
{
	struct vcpu_info *vcpu;

	/*
	 * We may be preempted as soon as vcpu->evtchn_upcall_mask is
	 * cleared, so disable preemption to ensure we check for
	 * events on the VCPU we are still running on.
	 */
	FUNC1();

	vcpu = FUNC3(xen_vcpu);
	vcpu->evtchn_upcall_mask = 0;

	/* Doesn't matter if we get preempted here, because any
	   pending event will get dealt with anyway. */

	FUNC0(); /* unmask then check (avoid races) */
	if (FUNC4(vcpu->evtchn_upcall_pending))
		FUNC5();

	FUNC2();
}