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
struct kvmppc_book3s_shadow_vcpu {scalar_t__ in_use; int /*<<< orphan*/  slb_max; int /*<<< orphan*/  slb; } ;
struct TYPE_6__ {int /*<<< orphan*/  shadow_vcpu; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  cpu; } ;
struct TYPE_5__ {int /*<<< orphan*/  kvm_shadow_vcpu; } ;
struct TYPE_8__ {TYPE_1__ thread; } ;
struct TYPE_7__ {int /*<<< orphan*/  slb_shadow_max; int /*<<< orphan*/  slb_shadow; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_207S ; 
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int LPCR_AIL ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct kvmppc_book3s_shadow_vcpu* FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvmppc_book3s_shadow_vcpu*) ; 
 TYPE_3__* FUNC10 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC11(struct kvm_vcpu *vcpu, int cpu)
{
#ifdef CONFIG_PPC_BOOK3S_64
	struct kvmppc_book3s_shadow_vcpu *svcpu = svcpu_get(vcpu);
	memcpy(svcpu->slb, to_book3s(vcpu)->slb_shadow, sizeof(svcpu->slb));
	svcpu->slb_max = to_book3s(vcpu)->slb_shadow_max;
	svcpu->in_use = 0;
	svcpu_put(svcpu);
#endif

	/* Disable AIL if supported */
	if (FUNC0(CPU_FTR_HVMODE) &&
	    FUNC0(CPU_FTR_ARCH_207S))
		FUNC6(SPRN_LPCR, FUNC5(SPRN_LPCR) & ~LPCR_AIL);

	vcpu->cpu = FUNC7();
#ifdef CONFIG_PPC_BOOK3S_32
	current->thread.kvm_shadow_vcpu = vcpu->arch.shadow_vcpu;
#endif

	if (FUNC2(vcpu))
		FUNC1(vcpu);

	FUNC3(vcpu);
}