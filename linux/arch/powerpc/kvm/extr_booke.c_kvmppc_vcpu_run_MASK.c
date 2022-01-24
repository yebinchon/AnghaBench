#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct debug_reg {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pgdir; struct debug_reg dbg_reg; int /*<<< orphan*/  sane; } ;
struct kvm_vcpu {int /*<<< orphan*/  mode; TYPE_1__ arch; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; } ;
struct TYPE_7__ {struct debug_reg debug; } ;
struct TYPE_8__ {TYPE_3__ thread; TYPE_2__* mm; } ;
struct TYPE_6__ {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ALTIVEC ; 
 int EINVAL ; 
 int /*<<< orphan*/  KVM_EXIT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  OUTSIDE_GUEST_MODE ; 
 int FUNC0 (struct kvm_run*,struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct debug_reg*) ; 

int FUNC11(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
{
	int ret, s;
	struct debug_reg debug;

	if (!vcpu->arch.sane) {
		kvm_run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
		return -EINVAL;
	}

	s = FUNC7(vcpu);
	if (s <= 0) {
		ret = s;
		goto out;
	}
	/* interrupts now hard-disabled */

#ifdef CONFIG_PPC_FPU
	/* Save userspace FPU state in stack */
	enable_kernel_fp();

	/*
	 * Since we can't trap on MSR_FP in GS-mode, we consider the guest
	 * as always using the FPU.
	 */
	kvmppc_load_guest_fp(vcpu);
#endif

#ifdef CONFIG_ALTIVEC
	/* Save userspace AltiVec state in stack */
	if (cpu_has_feature(CPU_FTR_ALTIVEC))
		enable_kernel_altivec();
	/*
	 * Since we can't trap on MSR_VEC in GS-mode, we consider the guest
	 * as always using the AltiVec.
	 */
	kvmppc_load_guest_altivec(vcpu);
#endif

	/* Switch to guest debug context */
	debug = vcpu->arch.dbg_reg;
	FUNC10(&debug);
	debug = current->thread.debug;
	current->thread.debug = vcpu->arch.dbg_reg;

	vcpu->arch.pgdir = current->mm->pgd;
	FUNC4();

	ret = FUNC0(kvm_run, vcpu);

	/* No need for guest_exit. It's done in handle_exit.
	   We also get here with interrupts enabled. */

	/* Switch back to user space debug context */
	FUNC10(&debug);
	current->thread.debug = debug;

#ifdef CONFIG_PPC_FPU
	kvmppc_save_guest_fp(vcpu);
#endif

#ifdef CONFIG_ALTIVEC
	kvmppc_save_guest_altivec(vcpu);
#endif

out:
	vcpu->mode = OUTSIDE_GUEST_MODE;
	return ret;
}