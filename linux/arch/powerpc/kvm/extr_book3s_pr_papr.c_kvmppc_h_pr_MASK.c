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
struct TYPE_4__ {int /*<<< orphan*/  halt_wakeup; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ stat; } ;
struct TYPE_5__ {int /*<<< orphan*/  rtas_tokens; int /*<<< orphan*/  enabled_hcalls; } ;
struct TYPE_6__ {int /*<<< orphan*/  srcu; TYPE_2__ arch; } ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
#define  H_BULK_REMOVE 144 
#define  H_CEDE 143 
#define  H_CPPR 142 
#define  H_ENTER 141 
#define  H_EOI 140 
#define  H_IPI 139 
#define  H_IPOLL 138 
#define  H_LOGICAL_CI_LOAD 137 
#define  H_LOGICAL_CI_STORE 136 
#define  H_PROTECT 135 
#define  H_PUT_TCE 134 
#define  H_PUT_TCE_INDIRECT 133 
#define  H_REMOVE 132 
#define  H_RTAS 131 
#define  H_STUFF_TCE 130 
#define  H_XIRR 129 
#define  H_XIRR_X 128 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 unsigned long MAX_HCALL_OPCODE ; 
 int MSR_EE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct kvm_vcpu*) ; 
 int FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct kvm_vcpu*) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 int FUNC11 (struct kvm_vcpu*) ; 
 int FUNC12 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned long,int /*<<< orphan*/ ) ; 

int FUNC21(struct kvm_vcpu *vcpu, unsigned long cmd)
{
	int rc, idx;

	if (cmd <= MAX_HCALL_OPCODE &&
	    !FUNC20(cmd/4, vcpu->kvm->arch.enabled_hcalls))
		return EMULATE_FAIL;

	switch (cmd) {
	case H_ENTER:
		return FUNC4(vcpu);
	case H_REMOVE:
		return FUNC10(vcpu);
	case H_PROTECT:
		return FUNC7(vcpu);
	case H_BULK_REMOVE:
		return FUNC3(vcpu);
	case H_PUT_TCE:
		return FUNC8(vcpu);
	case H_PUT_TCE_INDIRECT:
		return FUNC9(vcpu);
	case H_STUFF_TCE:
		return FUNC11(vcpu);
	case H_CEDE:
		FUNC15(vcpu, FUNC2(vcpu) | MSR_EE);
		FUNC1(vcpu);
		FUNC0(KVM_REQ_UNHALT, vcpu);
		vcpu->stat.halt_wakeup++;
		return EMULATE_DONE;
	case H_LOGICAL_CI_LOAD:
		return FUNC5(vcpu);
	case H_LOGICAL_CI_STORE:
		return FUNC6(vcpu);
	case H_XIRR:
	case H_CPPR:
	case H_EOI:
	case H_IPI:
	case H_IPOLL:
	case H_XIRR_X:
		if (FUNC16(vcpu))
			return FUNC12(vcpu, cmd);
		break;
	case H_RTAS:
		if (FUNC17(&vcpu->kvm->arch.rtas_tokens))
			break;
		idx = FUNC18(&vcpu->kvm->srcu);
		rc = FUNC13(vcpu);
		FUNC19(&vcpu->kvm->srcu, idx);
		if (rc)
			break;
		FUNC14(vcpu, 3, 0);
		return EMULATE_DONE;
	}

	return EMULATE_FAIL;
}