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
struct TYPE_3__ {int /*<<< orphan*/  pfault_token; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_2__* run; TYPE_1__ arch; } ;
struct TYPE_4__ {int kvm_valid_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_S390_PFAULT_TOKEN_INVALID ; 
 int KVM_SYNC_ACRS ; 
 int KVM_SYNC_ARCH0 ; 
 int KVM_SYNC_BPBC ; 
 int KVM_SYNC_CRS ; 
 int KVM_SYNC_ETOKEN ; 
 int KVM_SYNC_FPRS ; 
 int KVM_SYNC_GPRS ; 
 int KVM_SYNC_GSCB ; 
 int KVM_SYNC_PFAULT ; 
 int KVM_SYNC_PREFIX ; 
 int KVM_SYNC_RICCB ; 
 int KVM_SYNC_VRS ; 
 scalar_t__ MACHINE_HAS_VX ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct kvm_vcpu *vcpu)
{
	vcpu->arch.pfault_token = KVM_S390_PFAULT_TOKEN_INVALID;
	FUNC1(vcpu);
	vcpu->run->kvm_valid_regs = KVM_SYNC_PREFIX |
				    KVM_SYNC_GPRS |
				    KVM_SYNC_ACRS |
				    KVM_SYNC_CRS |
				    KVM_SYNC_ARCH0 |
				    KVM_SYNC_PFAULT;
	FUNC3(vcpu, 0);
	if (FUNC4(vcpu->kvm, 64))
		vcpu->run->kvm_valid_regs |= KVM_SYNC_RICCB;
	if (FUNC4(vcpu->kvm, 82))
		vcpu->run->kvm_valid_regs |= KVM_SYNC_BPBC;
	if (FUNC4(vcpu->kvm, 133))
		vcpu->run->kvm_valid_regs |= KVM_SYNC_GSCB;
	if (FUNC4(vcpu->kvm, 156))
		vcpu->run->kvm_valid_regs |= KVM_SYNC_ETOKEN;
	/* fprs can be synchronized via vrs, even if the guest has no vx. With
	 * MACHINE_HAS_VX, (load|store)_fpu_regs() will work with vrs format.
	 */
	if (MACHINE_HAS_VX)
		vcpu->run->kvm_valid_regs |= KVM_SYNC_VRS;
	else
		vcpu->run->kvm_valid_regs |= KVM_SYNC_FPRS;

	if (FUNC2(vcpu->kvm))
		return FUNC0(vcpu);

	return 0;
}