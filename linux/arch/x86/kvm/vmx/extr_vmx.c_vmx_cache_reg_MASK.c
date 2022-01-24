#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void** regs; int /*<<< orphan*/  regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  enum kvm_reg { ____Placeholder_kvm_reg } kvm_reg ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_RIP ; 
 int /*<<< orphan*/  GUEST_RSP ; 
#define  VCPU_EXREG_PDPTR 130 
#define  VCPU_REGS_RIP 129 
#define  VCPU_REGS_RSP 128 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  enable_ept ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu, enum kvm_reg reg)
{
	FUNC0(reg, (unsigned long *)&vcpu->arch.regs_avail);
	switch (reg) {
	case VCPU_REGS_RSP:
		vcpu->arch.regs[VCPU_REGS_RSP] = FUNC2(GUEST_RSP);
		break;
	case VCPU_REGS_RIP:
		vcpu->arch.regs[VCPU_REGS_RIP] = FUNC2(GUEST_RIP);
		break;
	case VCPU_EXREG_PDPTR:
		if (enable_ept)
			FUNC1(vcpu);
		break;
	default:
		break;
	}
}