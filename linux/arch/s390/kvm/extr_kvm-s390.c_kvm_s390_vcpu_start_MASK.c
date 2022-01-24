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
struct kvm_vcpu {TYPE_2__* kvm; int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  start_stop_lock; } ;
struct TYPE_4__ {TYPE_1__ arch; struct kvm_vcpu** vcpus; int /*<<< orphan*/  online_vcpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUSTAT_STOPPED ; 
 int /*<<< orphan*/  KVM_REQ_TLB_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(struct kvm_vcpu *vcpu)
{
	int i, online_vcpus, started_vcpus = 0;

	if (!FUNC3(vcpu))
		return;

	FUNC8(vcpu->vcpu_id, 1);
	/* Only one cpu at a time may enter/leave the STOPPED state. */
	FUNC6(&vcpu->kvm->arch.start_stop_lock);
	online_vcpus = FUNC2(&vcpu->kvm->online_vcpus);

	for (i = 0; i < online_vcpus; i++) {
		if (!FUNC3(vcpu->kvm->vcpus[i]))
			started_vcpus++;
	}

	if (started_vcpus == 0) {
		/* we're the only active VCPU -> speed it up */
		FUNC1(vcpu);
	} else if (started_vcpus == 1) {
		/*
		 * As we are starting a second VCPU, we have to disable
		 * the IBS facility on all VCPUs to remove potentially
		 * oustanding ENABLE requests.
		 */
		FUNC0(vcpu->kvm);
	}

	FUNC5(vcpu, CPUSTAT_STOPPED);
	/*
	 * Another VCPU might have used IBS while we were offline.
	 * Let's play safe and flush the VCPU at startup.
	 */
	FUNC4(KVM_REQ_TLB_FLUSH, vcpu);
	FUNC7(&vcpu->kvm->arch.start_stop_lock);
	return;
}