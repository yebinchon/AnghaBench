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
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct kvm_vcpu *vcpu)
{
	int i, online_vcpus, started_vcpus = 0;
	struct kvm_vcpu *started_vcpu = NULL;

	if (FUNC3(vcpu))
		return;

	FUNC8(vcpu->vcpu_id, 0);
	/* Only one cpu at a time may enter/leave the STOPPED state. */
	FUNC6(&vcpu->kvm->arch.start_stop_lock);
	online_vcpus = FUNC2(&vcpu->kvm->online_vcpus);

	/* SIGP STOP and SIGP STOP AND STORE STATUS has been fully processed */
	FUNC4(vcpu);

	FUNC5(vcpu, CPUSTAT_STOPPED);
	FUNC0(vcpu);

	for (i = 0; i < online_vcpus; i++) {
		if (!FUNC3(vcpu->kvm->vcpus[i])) {
			started_vcpus++;
			started_vcpu = vcpu->kvm->vcpus[i];
		}
	}

	if (started_vcpus == 1) {
		/*
		 * As we only have one VCPU left, we want to enable the
		 * IBS facility for that VCPU to speed it up.
		 */
		FUNC1(started_vcpu);
	}

	FUNC7(&vcpu->kvm->arch.start_stop_lock);
	return;
}