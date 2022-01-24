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
struct msr_data {int data; int host_initiated; int /*<<< orphan*/  index; } ;
struct TYPE_3__ {int msr_kvm_poll_control; } ;
struct kvm_vcpu {int /*<<< orphan*/  mutex; TYPE_1__ arch; struct kvm* kvm; } ;
struct TYPE_4__ {int /*<<< orphan*/  kvmclock_sync_work; } ;
struct kvm {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVMCLOCK_SYNC_PERIOD ; 
 int /*<<< orphan*/  MSR_IA32_TSC ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct msr_data*) ; 
 int /*<<< orphan*/  kvmclock_periodic_sync ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 

void FUNC7(struct kvm_vcpu *vcpu)
{
	struct msr_data msr;
	struct kvm *kvm = vcpu->kvm;

	FUNC0(vcpu);

	if (FUNC2(&vcpu->mutex))
		return;
	FUNC5(vcpu);
	msr.data = 0x0;
	msr.index = MSR_IA32_TSC;
	msr.host_initiated = true;
	FUNC1(vcpu, &msr);
	FUNC6(vcpu);

	/* poll control enabled by default */
	vcpu->arch.msr_kvm_poll_control = 1;

	FUNC3(&vcpu->mutex);

	if (!kvmclock_periodic_sync)
		return;

	FUNC4(&kvm->arch.kvmclock_sync_work,
					KVMCLOCK_SYNC_PERIOD);
}