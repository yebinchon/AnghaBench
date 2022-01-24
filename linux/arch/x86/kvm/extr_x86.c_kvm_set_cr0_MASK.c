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
struct TYPE_3__ {int efer; int /*<<< orphan*/  walk_mmu; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_1__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_cr0 ) (struct kvm_vcpu*,unsigned long) ;int /*<<< orphan*/  (* get_cs_db_l_bits ) (struct kvm_vcpu*,int*,int*) ;} ;

/* Variables and functions */
 unsigned long CR0_RESERVED_BITS ; 
 int EFER_LME ; 
 int /*<<< orphan*/  KVM_X86_QUIRK_CD_NW_CLEARED ; 
 unsigned long X86_CR0_CD ; 
 unsigned long X86_CR0_ET ; 
 unsigned long X86_CR0_NW ; 
 unsigned long X86_CR0_PE ; 
 unsigned long X86_CR0_PG ; 
 unsigned long X86_CR0_WP ; 
 int /*<<< orphan*/  X86_CR4_PCIDE ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 unsigned long FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_2__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,unsigned long) ; 

int FUNC14(struct kvm_vcpu *vcpu, unsigned long cr0)
{
	unsigned long old_cr0 = FUNC7(vcpu);
	unsigned long update_bits = X86_CR0_PG | X86_CR0_WP;

	cr0 |= X86_CR0_ET;

#ifdef CONFIG_X86_64
	if (cr0 & 0xffffffff00000000UL)
		return 1;
#endif

	cr0 &= ~CR0_RESERVED_BITS;

	if ((cr0 & X86_CR0_NW) && !(cr0 & X86_CR0_CD))
		return 1;

	if ((cr0 & X86_CR0_PG) && !(cr0 & X86_CR0_PE))
		return 1;

	if (!FUNC1(vcpu) && (cr0 & X86_CR0_PG)) {
#ifdef CONFIG_X86_64
		if ((vcpu->arch.efer & EFER_LME)) {
			int cs_db, cs_l;

			if (!is_pae(vcpu))
				return 1;
			kvm_x86_ops->get_cs_db_l_bits(vcpu, &cs_db, &cs_l);
			if (cs_l)
				return 1;
		} else
#endif
		if (FUNC0(vcpu) && !FUNC11(vcpu, vcpu->arch.walk_mmu,
						 FUNC8(vcpu)))
			return 1;
	}

	if (!(cr0 & X86_CR0_PG) && FUNC9(vcpu, X86_CR4_PCIDE))
		return 1;

	kvm_x86_ops->set_cr0(vcpu, cr0);

	if ((cr0 ^ old_cr0) & X86_CR0_PG) {
		FUNC5(vcpu);
		FUNC3(vcpu);
	}

	if ((cr0 ^ old_cr0) & update_bits)
		FUNC6(vcpu);

	if (((cr0 ^ old_cr0) & X86_CR0_CD) &&
	    FUNC2(vcpu->kvm) &&
	    !FUNC4(vcpu->kvm, KVM_X86_QUIRK_CD_NW_CLEARED))
		FUNC10(vcpu->kvm, 0, ~0ULL);

	return 0;
}