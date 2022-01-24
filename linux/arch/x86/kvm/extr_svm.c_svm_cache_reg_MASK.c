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
struct TYPE_2__ {int /*<<< orphan*/  walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  enum kvm_reg { ____Placeholder_kvm_reg } kvm_reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  VCPU_EXREG_PDPTR 128 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  npt_enabled ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu, enum kvm_reg reg)
{
	switch (reg) {
	case VCPU_EXREG_PDPTR:
		FUNC1(!npt_enabled);
		FUNC3(vcpu, vcpu->arch.walk_mmu, FUNC2(vcpu));
		break;
	default:
		FUNC0();
	}
}