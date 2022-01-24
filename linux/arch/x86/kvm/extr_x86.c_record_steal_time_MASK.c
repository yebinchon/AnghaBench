#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int preempted; int version; int /*<<< orphan*/  steal; } ;
struct TYPE_8__ {int msr_val; TYPE_4__ steal; int /*<<< orphan*/  stime; scalar_t__ last_steal; } ;
struct TYPE_9__ {TYPE_2__ st; } ;
struct kvm_vcpu {TYPE_3__ arch; int /*<<< orphan*/  kvm; int /*<<< orphan*/  vcpu_id; } ;
struct kvm_steal_time {int dummy; } ;
struct TYPE_7__ {scalar_t__ run_delay; } ;
struct TYPE_11__ {TYPE_1__ sched_info; } ;

/* Variables and functions */
 int KVM_MSR_ENABLED ; 
 int KVM_VCPU_FLUSH_TLB ; 
 TYPE_6__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu)
{
	if (!(vcpu->arch.st.msr_val & KVM_MSR_ENABLED))
		return;

	if (FUNC5(FUNC0(vcpu->kvm, &vcpu->arch.st.stime,
		&vcpu->arch.st.steal, sizeof(struct kvm_steal_time))))
		return;

	/*
	 * Doing a TLB flush here, on the guest's behalf, can avoid
	 * expensive IPIs.
	 */
	FUNC4(vcpu->vcpu_id,
		vcpu->arch.st.steal.preempted & KVM_VCPU_FLUSH_TLB);
	if (FUNC6(&vcpu->arch.st.steal.preempted, 0) & KVM_VCPU_FLUSH_TLB)
		FUNC1(vcpu, false);

	if (vcpu->arch.st.steal.version & 1)
		vcpu->arch.st.steal.version += 1;  /* first time write, random junk */

	vcpu->arch.st.steal.version += 1;

	FUNC2(vcpu->kvm, &vcpu->arch.st.stime,
		&vcpu->arch.st.steal, sizeof(struct kvm_steal_time));

	FUNC3();

	vcpu->arch.st.steal.steal += current->sched_info.run_delay -
		vcpu->arch.st.last_steal;
	vcpu->arch.st.last_steal = current->sched_info.run_delay;

	FUNC2(vcpu->kvm, &vcpu->arch.st.stime,
		&vcpu->arch.st.steal, sizeof(struct kvm_steal_time));

	FUNC3();

	vcpu->arch.st.steal.version += 1;

	FUNC2(vcpu->kvm, &vcpu->arch.st.stime,
		&vcpu->arch.st.steal, sizeof(struct kvm_steal_time));
}