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
struct kvmppc_book3s_shadow_vcpu {int /*<<< orphan*/  slb_max; int /*<<< orphan*/  slb; scalar_t__ in_use; } ;
struct kvm_vcpu {int cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  slb_shadow_max; int /*<<< orphan*/  slb_shadow; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_207S ; 
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int /*<<< orphan*/  FSCR_TAR_LG ; 
 int LPCR_AIL_3 ; 
 int MSR_FP ; 
 int MSR_VEC ; 
 int MSR_VSX ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct kvmppc_book3s_shadow_vcpu* FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvmppc_book3s_shadow_vcpu*) ; 
 TYPE_1__* FUNC12 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC13(struct kvm_vcpu *vcpu)
{
#ifdef CONFIG_PPC_BOOK3S_64
	struct kvmppc_book3s_shadow_vcpu *svcpu = svcpu_get(vcpu);
	if (svcpu->in_use) {
		kvmppc_copy_from_svcpu(vcpu);
	}
	memcpy(to_book3s(vcpu)->slb_shadow, svcpu->slb, sizeof(svcpu->slb));
	to_book3s(vcpu)->slb_shadow_max = svcpu->slb_max;
	svcpu_put(svcpu);
#endif

	if (FUNC4(vcpu))
		FUNC6(vcpu);

	FUNC2(vcpu, MSR_FP | MSR_VEC | MSR_VSX);
	FUNC3(vcpu, FSCR_TAR_LG);
	FUNC5(vcpu);

	/* Enable AIL if supported */
	if (FUNC0(CPU_FTR_HVMODE) &&
	    FUNC0(CPU_FTR_ARCH_207S))
		FUNC9(SPRN_LPCR, FUNC8(SPRN_LPCR) | LPCR_AIL_3);

	vcpu->cpu = -1;
}