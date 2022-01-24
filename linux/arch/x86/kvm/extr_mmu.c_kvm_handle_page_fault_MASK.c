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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int host_apf_reason; } ;
struct TYPE_4__ {int l1tf_flush_l1d; TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;

/* Variables and functions */
#define  KVM_PV_REASON_PAGE_NOT_PRESENT 129 
#define  KVM_PV_REASON_PAGE_READY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct kvm_vcpu *vcpu, u64 error_code,
				u64 fault_address, char *insn, int insn_len)
{
	int r = 1;

	vcpu->arch.l1tf_flush_l1d = true;
	switch (vcpu->arch.apf.host_apf_reason) {
	default:
		FUNC7(fault_address, error_code);

		if (FUNC2(vcpu))
			FUNC4(vcpu, fault_address);
		r = FUNC3(vcpu, fault_address, error_code, insn,
				insn_len);
		break;
	case KVM_PV_REASON_PAGE_NOT_PRESENT:
		vcpu->arch.apf.host_apf_reason = 0;
		FUNC5();
		FUNC0(fault_address, 0);
		FUNC6();
		break;
	case KVM_PV_REASON_PAGE_READY:
		vcpu->arch.apf.host_apf_reason = 0;
		FUNC5();
		FUNC1(fault_address);
		FUNC6();
		break;
	}
	return r;
}