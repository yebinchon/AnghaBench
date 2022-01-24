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
struct TYPE_2__ {int aux_inuse; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int KVM_MIPS_AUX_FPU ; 
 int KVM_MIPS_AUX_MSA ; 
 int /*<<< orphan*/  KVM_TRACE_AUX_DISCARD ; 
 int /*<<< orphan*/  KVM_TRACE_AUX_FPU ; 
 int /*<<< orphan*/  KVM_TRACE_AUX_MSA ; 
 int ST0_CU1 ; 
 int ST0_FR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cpu_has_msa ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct kvm_vcpu *vcpu)
{
	FUNC2();
	if (cpu_has_msa && vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA) {
		FUNC1();
		FUNC4(vcpu, KVM_TRACE_AUX_DISCARD, KVM_TRACE_AUX_MSA);
		vcpu->arch.aux_inuse &= ~KVM_MIPS_AUX_MSA;
	}
	if (vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU) {
		FUNC0(ST0_CU1 | ST0_FR);
		FUNC4(vcpu, KVM_TRACE_AUX_DISCARD, KVM_TRACE_AUX_FPU);
		vcpu->arch.aux_inuse &= ~KVM_MIPS_AUX_FPU;
	}
	FUNC3();
}