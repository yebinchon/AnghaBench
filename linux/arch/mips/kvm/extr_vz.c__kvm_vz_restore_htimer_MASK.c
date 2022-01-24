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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  MIPS_EXC_INT_TIMER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu,
				   u32 compare, u32 cause)
{
	u32 start_count, after_count;
	ktime_t freeze_time;
	unsigned long flags;

	/*
	 * Freeze the soft-timer and sync the guest CP0_Count with it. We do
	 * this with interrupts disabled to avoid latency.
	 */
	FUNC4(flags);
	freeze_time = FUNC1(vcpu, &start_count);
	FUNC7(start_count - FUNC5());
	FUNC3(flags);

	/* restore guest CP0_Cause, as TI may already be set */
	FUNC0();
	FUNC8(cause);

	/*
	 * The above sequence isn't atomic and would result in lost timer
	 * interrupts if we're not careful. Detect if a timer interrupt is due
	 * and assert it.
	 */
	FUNC0();
	after_count = FUNC6();
	if (after_count - start_count > compare - start_count - 1)
		FUNC2(vcpu, MIPS_EXC_INT_TIMER);
}