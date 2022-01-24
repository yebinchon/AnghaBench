#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int halted; } ;
struct TYPE_5__ {int pv_unhalted; } ;
struct TYPE_7__ {int mp_state; TYPE_2__ apf; TYPE_1__ pv; } ;
struct kvm_vcpu {TYPE_3__ arch; int /*<<< orphan*/  srcu_idx; } ;
struct kvm {int /*<<< orphan*/  srcu; } ;
struct TYPE_8__ {scalar_t__ (* pre_block ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* post_block ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int EINTR ; 
#define  KVM_MP_STATE_HALTED 130 
#define  KVM_MP_STATE_INIT_RECEIVED 129 
#define  KVM_MP_STATE_RUNNABLE 128 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 TYPE_4__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline int FUNC8(struct kvm *kvm, struct kvm_vcpu *vcpu)
{
	if (!FUNC1(vcpu) &&
	    (!kvm_x86_ops->pre_block || kvm_x86_ops->pre_block(vcpu) == 0)) {
		FUNC5(&kvm->srcu, vcpu->srcu_idx);
		FUNC3(vcpu);
		vcpu->srcu_idx = FUNC4(&kvm->srcu);

		if (kvm_x86_ops->post_block)
			kvm_x86_ops->post_block(vcpu);

		if (!FUNC2(KVM_REQ_UNHALT, vcpu))
			return 1;
	}

	FUNC0(vcpu);
	switch(vcpu->arch.mp_state) {
	case KVM_MP_STATE_HALTED:
		vcpu->arch.pv.pv_unhalted = false;
		vcpu->arch.mp_state =
			KVM_MP_STATE_RUNNABLE;
		/* fall through */
	case KVM_MP_STATE_RUNNABLE:
		vcpu->arch.apf.halted = false;
		break;
	case KVM_MP_STATE_INIT_RECEIVED:
		break;
	default:
		return -EINTR;
		break;
	}
	return 1;
}