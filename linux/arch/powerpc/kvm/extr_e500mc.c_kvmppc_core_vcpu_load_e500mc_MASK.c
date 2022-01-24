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
struct kvmppc_vcpu_e500 {int dummy; } ;
struct TYPE_4__ {unsigned long shadow_epcr; unsigned long shadow_msrp; size_t eplc; size_t epsc; unsigned long ivpr; unsigned long* ivor; unsigned long epr; scalar_t__ oldpir; TYPE_1__* shared; } ;
struct kvm_vcpu {unsigned long vcpu_id; TYPE_2__ arch; } ;
struct TYPE_3__ {unsigned long srr0; unsigned long srr1; unsigned long dar; unsigned long esr; scalar_t__ sprg3; scalar_t__ sprg2; scalar_t__ sprg1; scalar_t__ sprg0; } ;

/* Variables and functions */
 size_t BOOKE_IRQPRIO_DATA_STORAGE ; 
 size_t BOOKE_IRQPRIO_SYSCALL ; 
 size_t EPC_EGS ; 
 size_t EPC_ELPID_SHIFT ; 
 int /*<<< orphan*/  SPRN_EPCR ; 
 int /*<<< orphan*/  SPRN_EPLC ; 
 int /*<<< orphan*/  SPRN_EPSC ; 
 int /*<<< orphan*/  SPRN_GDEAR ; 
 int /*<<< orphan*/  SPRN_GEPR ; 
 int /*<<< orphan*/  SPRN_GESR ; 
 int /*<<< orphan*/  SPRN_GIVOR2 ; 
 int /*<<< orphan*/  SPRN_GIVOR8 ; 
 int /*<<< orphan*/  SPRN_GIVPR ; 
 int /*<<< orphan*/  SPRN_GPIR ; 
 int /*<<< orphan*/  SPRN_GSPRG0 ; 
 int /*<<< orphan*/  SPRN_GSPRG1 ; 
 int /*<<< orphan*/  SPRN_GSPRG2 ; 
 int /*<<< orphan*/  SPRN_GSPRG3 ; 
 int /*<<< orphan*/  SPRN_GSRR0 ; 
 int /*<<< orphan*/  SPRN_GSRR1 ; 
 int /*<<< orphan*/  SPRN_LPID ; 
 int /*<<< orphan*/  SPRN_MSRP ; 
 int /*<<< orphan*/  SPRN_PIR ; 
 struct kvm_vcpu* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 size_t FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_vcpu_e500*) ; 
 int /*<<< orphan*/ * last_vcpu_of_lpid ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 struct kvmppc_vcpu_e500* FUNC7 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu, int cpu)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC7(vcpu);

	FUNC3(vcpu, cpu);

	FUNC6(SPRN_LPID, FUNC2(vcpu));
	FUNC6(SPRN_EPCR, vcpu->arch.shadow_epcr);
	FUNC6(SPRN_GPIR, vcpu->vcpu_id);
	FUNC6(SPRN_MSRP, vcpu->arch.shadow_msrp);
	vcpu->arch.eplc = EPC_EGS | (FUNC2(vcpu) << EPC_ELPID_SHIFT);
	vcpu->arch.epsc = vcpu->arch.eplc;
	FUNC6(SPRN_EPLC, vcpu->arch.eplc);
	FUNC6(SPRN_EPSC, vcpu->arch.epsc);

	FUNC6(SPRN_GIVPR, vcpu->arch.ivpr);
	FUNC6(SPRN_GIVOR2, vcpu->arch.ivor[BOOKE_IRQPRIO_DATA_STORAGE]);
	FUNC6(SPRN_GIVOR8, vcpu->arch.ivor[BOOKE_IRQPRIO_SYSCALL]);
	FUNC6(SPRN_GSPRG0, (unsigned long)vcpu->arch.shared->sprg0);
	FUNC6(SPRN_GSPRG1, (unsigned long)vcpu->arch.shared->sprg1);
	FUNC6(SPRN_GSPRG2, (unsigned long)vcpu->arch.shared->sprg2);
	FUNC6(SPRN_GSPRG3, (unsigned long)vcpu->arch.shared->sprg3);

	FUNC6(SPRN_GSRR0, vcpu->arch.shared->srr0);
	FUNC6(SPRN_GSRR1, vcpu->arch.shared->srr1);

	FUNC6(SPRN_GEPR, vcpu->arch.epr);
	FUNC6(SPRN_GDEAR, vcpu->arch.shared->dar);
	FUNC6(SPRN_GESR, vcpu->arch.shared->esr);

	if (vcpu->arch.oldpir != FUNC5(SPRN_PIR) ||
	    FUNC0(last_vcpu_of_lpid[FUNC2(vcpu)]) != vcpu) {
		FUNC4(vcpu_e500);
		FUNC1(last_vcpu_of_lpid[FUNC2(vcpu)], vcpu);
	}
}