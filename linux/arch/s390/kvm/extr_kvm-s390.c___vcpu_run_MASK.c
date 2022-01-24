#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sie_block; } ;
struct kvm_vcpu {void* srcu_idx; TYPE_5__* kvm; TYPE_4__* run; TYPE_1__ arch; } ;
struct TYPE_10__ {int /*<<< orphan*/  srcu; } ;
struct TYPE_7__ {int /*<<< orphan*/  gprs; } ;
struct TYPE_8__ {TYPE_2__ regs; } ;
struct TYPE_9__ {TYPE_3__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*) ; 
 int FUNC11 (struct kvm_vcpu*,int) ; 
 int FUNC12 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC13(struct kvm_vcpu *vcpu)
{
	int rc, exit_reason;

	/*
	 * We try to hold kvm->srcu during most of vcpu_run (except when run-
	 * ning the guest), so that memslots (and other stuff) are protected
	 */
	vcpu->srcu_idx = FUNC9(&vcpu->kvm->srcu);

	do {
		rc = FUNC12(vcpu);
		if (rc)
			break;

		FUNC10(&vcpu->kvm->srcu, vcpu->srcu_idx);
		/*
		 * As PF_VCPU will be used in fault handler, between
		 * guest_enter and guest_exit should be no uaccess.
		 */
		FUNC5();
		FUNC2();
		FUNC0(vcpu);
		FUNC6();
		exit_reason = FUNC7(vcpu->arch.sie_block,
				     vcpu->run->s.regs.gprs);
		FUNC5();
		FUNC1(vcpu);
		FUNC3();
		FUNC6();
		vcpu->srcu_idx = FUNC9(&vcpu->kvm->srcu);

		rc = FUNC11(vcpu, exit_reason);
	} while (!FUNC8(current) && !FUNC4(vcpu) && !rc);

	FUNC10(&vcpu->kvm->srcu, vcpu->srcu_idx);
	return rc;
}