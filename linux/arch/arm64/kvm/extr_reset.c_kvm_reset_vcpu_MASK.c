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
struct TYPE_3__ {int reset; unsigned long pc; int /*<<< orphan*/  r0; scalar_t__ be; } ;
struct TYPE_4__ {int target; int /*<<< orphan*/  workaround_flags; TYPE_1__ reset_state; int /*<<< orphan*/  features; } ;
struct kvm_vcpu {int cpu; TYPE_2__ arch; } ;
struct kvm_regs {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KVM_ARM_VCPU_EL1_32BIT ; 
 int /*<<< orphan*/  KVM_ARM_VCPU_PTRAUTH_ADDRESS ; 
 int /*<<< orphan*/  KVM_ARM_VCPU_PTRAUTH_GENERIC ; 
 int /*<<< orphan*/  KVM_ARM_VCPU_SVE ; 
 scalar_t__ KVM_SSBD_KERNEL ; 
 int /*<<< orphan*/  VCPU_WORKAROUND_2_FLAG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct kvm_regs default_regs_reset ; 
 struct kvm_regs default_regs_reset32 ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct kvm_regs const*,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC18 (struct kvm_vcpu*) ; 
 unsigned long* FUNC19 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*) ; 

int FUNC22(struct kvm_vcpu *vcpu)
{
	const struct kvm_regs *cpu_reset;
	int ret = -EINVAL;
	bool loaded;

	/* Reset PMU outside of the non-preemptible section */
	FUNC5(vcpu);

	FUNC13();
	loaded = (vcpu->cpu != -1);
	if (loaded)
		FUNC2(vcpu);

	if (!FUNC4(vcpu)) {
		if (FUNC16(KVM_ARM_VCPU_SVE, vcpu->arch.features)) {
			ret = FUNC9(vcpu);
			if (ret)
				goto out;
		}
	} else {
		FUNC10(vcpu);
	}

	if (FUNC16(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
	    FUNC16(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features)) {
		if (FUNC8(vcpu))
			goto out;
	}

	switch (vcpu->arch.target) {
	default:
		if (FUNC16(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features)) {
			if (!FUNC0())
				goto out;
			cpu_reset = &default_regs_reset32;
		} else {
			cpu_reset = &default_regs_reset;
		}

		break;
	}

	/* Reset core registers */
	FUNC12(FUNC17(vcpu), cpu_reset, sizeof(*cpu_reset));

	/* Reset system registers */
	FUNC6(vcpu);

	/*
	 * Additional reset state handling that PSCI may have imposed on us.
	 * Must be done after all the sys_reg reset.
	 */
	if (vcpu->arch.reset_state.reset) {
		unsigned long target_pc = vcpu->arch.reset_state.pc;

		/* Gracefully handle Thumb2 entry point */
		if (FUNC18(vcpu) && (target_pc & 1)) {
			target_pc &= ~1UL;
			FUNC21(vcpu);
		}

		/* Propagate caller endianness */
		if (vcpu->arch.reset_state.be)
			FUNC11(vcpu);

		*FUNC19(vcpu) = target_pc;
		FUNC20(vcpu, 0, vcpu->arch.reset_state.r0);

		vcpu->arch.reset_state.reset = false;
	}

	/* Default workaround setup is enabled (if supported) */
	if (FUNC3() == KVM_SSBD_KERNEL)
		vcpu->arch.workaround_flags |= VCPU_WORKAROUND_2_FLAG;

	/* Reset timer */
	ret = FUNC7(vcpu);
out:
	if (loaded)
		FUNC1(vcpu, FUNC15());
	FUNC14();
	return ret;
}