#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int aux_inuse; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_KVM_MIPS_VZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int KVM_MIPS_AUX_FPU ; 
 int KVM_MIPS_AUX_MSA ; 
 int /*<<< orphan*/  KVM_TRACE_AUX_FPU ; 
 int /*<<< orphan*/  KVM_TRACE_AUX_FPU_MSA ; 
 int /*<<< orphan*/  KVM_TRACE_AUX_SAVE ; 
 int /*<<< orphan*/  MIPS_CONF5_MSAEN ; 
 int ST0_CU1 ; 
 int ST0_FR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ cpu_has_msa ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC12(struct kvm_vcpu *vcpu)
{
	/*
	 * With T&E, FPU & MSA get disabled in root context (hardware) when it
	 * is disabled in guest context (software), but the register state in
	 * the hardware may still be in use.
	 * This is why we explicitly re-enable the hardware before saving.
	 */

	FUNC7();
	if (cpu_has_msa && vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA) {
		if (!FUNC0(CONFIG_KVM_MIPS_VZ)) {
			FUNC9(MIPS_CONF5_MSAEN);
			FUNC6();
		}

		FUNC2(&vcpu->arch);
		FUNC11(vcpu, KVM_TRACE_AUX_SAVE, KVM_TRACE_AUX_FPU_MSA);

		/* Disable MSA & FPU */
		FUNC5();
		if (vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU) {
			FUNC3(ST0_CU1 | ST0_FR);
			FUNC4();
		}
		vcpu->arch.aux_inuse &= ~(KVM_MIPS_AUX_FPU | KVM_MIPS_AUX_MSA);
	} else if (vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU) {
		if (!FUNC0(CONFIG_KVM_MIPS_VZ)) {
			FUNC10(ST0_CU1);
			FUNC6();
		}

		FUNC1(&vcpu->arch);
		vcpu->arch.aux_inuse &= ~KVM_MIPS_AUX_FPU;
		FUNC11(vcpu, KVM_TRACE_AUX_SAVE, KVM_TRACE_AUX_FPU);

		/* Disable FPU */
		FUNC3(ST0_CU1 | ST0_FR);
		FUNC4();
	}
	FUNC8();
}