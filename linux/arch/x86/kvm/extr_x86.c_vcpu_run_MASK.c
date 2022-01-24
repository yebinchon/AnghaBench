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
struct TYPE_6__ {int /*<<< orphan*/  signal_exits; int /*<<< orphan*/  request_irq_exits; } ;
struct TYPE_4__ {int l1tf_flush_l1d; } ;
struct kvm_vcpu {void* srcu_idx; TYPE_3__ stat; TYPE_2__* run; TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm {int /*<<< orphan*/  srcu; } ;
struct TYPE_5__ {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  KVM_EXIT_INTR ; 
 int /*<<< orphan*/  KVM_EXIT_IRQ_WINDOW_OPEN ; 
 int /*<<< orphan*/  KVM_REQ_PENDING_TIMER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*) ; 
 int FUNC12 (struct kvm*,struct kvm_vcpu*) ; 
 int FUNC13 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC14(struct kvm_vcpu *vcpu)
{
	int r;
	struct kvm *kvm = vcpu->kvm;

	vcpu->srcu_idx = FUNC10(&kvm->srcu);
	vcpu->arch.l1tf_flush_l1d = true;

	for (;;) {
		if (FUNC7(vcpu)) {
			r = FUNC13(vcpu);
		} else {
			r = FUNC12(kvm, vcpu);
		}

		if (r <= 0)
			break;

		FUNC3(KVM_REQ_PENDING_TIMER, vcpu);
		if (FUNC4(vcpu))
			FUNC5(vcpu);

		if (FUNC1(vcpu) &&
			FUNC6(vcpu)) {
			r = 0;
			vcpu->run->exit_reason = KVM_EXIT_IRQ_WINDOW_OPEN;
			++vcpu->stat.request_irq_exits;
			break;
		}

		FUNC2(vcpu);

		if (FUNC9(current)) {
			r = -EINTR;
			vcpu->run->exit_reason = KVM_EXIT_INTR;
			++vcpu->stat.signal_exits;
			break;
		}
		if (FUNC8()) {
			FUNC11(&kvm->srcu, vcpu->srcu_idx);
			FUNC0();
			vcpu->srcu_idx = FUNC10(&kvm->srcu);
		}
	}

	FUNC11(&kvm->srcu, vcpu->srcu_idx);

	return r;
}