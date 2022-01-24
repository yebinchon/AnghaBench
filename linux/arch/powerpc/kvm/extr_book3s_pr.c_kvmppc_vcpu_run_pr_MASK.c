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
typedef  int /*<<< orphan*/  vrsave ;
struct TYPE_2__ {int /*<<< orphan*/  sane; } ;
struct kvm_vcpu {int /*<<< orphan*/  mode; TYPE_1__ arch; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOK3S_INTERRUPT_FP_UNAVAIL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FSCR_TAR_LG ; 
 int /*<<< orphan*/  KVM_EXIT_INTERNAL_ERROR ; 
 int MSR_FP ; 
 int MSR_VEC ; 
 int MSR_VSX ; 
 int /*<<< orphan*/  OUTSIDE_GUEST_MODE ; 
 int FUNC0 (struct kvm_run*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC10(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
{
	int ret;
#ifdef CONFIG_ALTIVEC
	unsigned long uninitialized_var(vrsave);
#endif

	/* Check if we can run the vcpu at all */
	if (!vcpu->arch.sane) {
		kvm_run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
		ret = -EINVAL;
		goto out;
	}

	FUNC9(vcpu);

	/*
	 * Interrupts could be timers for the guest which we have to inject
	 * again, so let's postpone them until we're in the guest and if we
	 * really did time things so badly, then we just exit again due to
	 * a host external interrupt.
	 */
	ret = FUNC8(vcpu);
	if (ret <= 0)
		goto out;
	/* interrupts now hard-disabled */

	/* Save FPU, Altivec and VSX state */
	FUNC1(current);

	/* Preload FPU if it's enabled */
	if (FUNC4(vcpu) & MSR_FP)
		FUNC7(vcpu, BOOK3S_INTERRUPT_FP_UNAVAIL, MSR_FP);

	FUNC3();

	ret = FUNC0(kvm_run, vcpu);

	FUNC2(vcpu);

	/* No need for guest_exit. It's done in handle_exit.
	   We also get here with interrupts enabled. */

	/* Make sure we save the guest FPU/Altivec/VSX state */
	FUNC5(vcpu, MSR_FP | MSR_VEC | MSR_VSX);

	/* Make sure we save the guest TAR/EBB/DSCR state */
	FUNC6(vcpu, FSCR_TAR_LG);

out:
	vcpu->mode = OUTSIDE_GUEST_MODE;
	return ret;
}