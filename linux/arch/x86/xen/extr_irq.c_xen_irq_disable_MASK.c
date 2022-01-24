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
struct TYPE_2__ {int evtchn_upcall_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xen_vcpu ; 

void FUNC3(void)
{
	/* There's a one instruction preempt window here.  We need to
	   make sure we're don't switch CPUs between getting the vcpu
	   pointer and updating the mask. */
	FUNC0();
	FUNC2(xen_vcpu)->evtchn_upcall_mask = 1;
	FUNC1();
}