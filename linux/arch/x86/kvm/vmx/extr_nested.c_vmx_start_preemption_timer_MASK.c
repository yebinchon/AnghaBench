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
typedef  int u64 ;
struct TYPE_4__ {int /*<<< orphan*/  preemption_timer; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct TYPE_5__ {int /*<<< orphan*/  virtual_tsc_khz; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {int vmx_preemption_timer_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int VMX_MISC_EMULATED_PREEMPTION_TIMER_RATE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct vcpu_vmx* FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	u64 preemption_timeout = FUNC1(vcpu)->vmx_preemption_timer_value;
	struct vcpu_vmx *vmx = FUNC4(vcpu);

	/*
	 * A timer value of zero is architecturally guaranteed to cause
	 * a VMExit prior to executing any instructions in the guest.
	 */
	if (preemption_timeout == 0) {
		FUNC5(&vmx->nested.preemption_timer);
		return;
	}

	if (vcpu->arch.virtual_tsc_khz == 0)
		return;

	preemption_timeout <<= VMX_MISC_EMULATED_PREEMPTION_TIMER_RATE;
	preemption_timeout *= 1000000;
	FUNC0(preemption_timeout, vcpu->arch.virtual_tsc_khz);
	FUNC2(&vmx->nested.preemption_timer,
		      FUNC3(preemption_timeout), HRTIMER_MODE_REL);
}