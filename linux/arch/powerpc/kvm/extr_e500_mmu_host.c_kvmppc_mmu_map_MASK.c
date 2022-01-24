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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int flags; } ;
struct tlbe_priv {TYPE_1__ ref; } ;
struct kvmppc_vcpu_e500 {struct tlbe_priv** gtlb_priv; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
typedef  int gpa_t ;
typedef  int gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOOK3E_PAGESZ_4K ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int E500_TLB_VALID ; 
 int PAGE_SHIFT ; 
 int FUNC1 (unsigned int) ; 
 struct kvm_book3e_206_tlb_entry* FUNC2 (struct kvmppc_vcpu_e500*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct kvm_book3e_206_tlb_entry*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_vcpu_e500*,int,struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvmppc_vcpu_e500*,int /*<<< orphan*/ ,int,struct kvm_book3e_206_tlb_entry*,struct kvm_book3e_206_tlb_entry*,int) ; 
 int FUNC6 (unsigned int) ; 
 struct kvmppc_vcpu_e500* FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvmppc_vcpu_e500*,struct kvm_book3e_206_tlb_entry*,struct kvm_book3e_206_tlb_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct kvm_vcpu *vcpu, u64 eaddr, gpa_t gpaddr,
		    unsigned int index)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC7(vcpu);
	struct tlbe_priv *priv;
	struct kvm_book3e_206_tlb_entry *gtlbe, stlbe;
	int tlbsel = FUNC6(index);
	int esel = FUNC1(index);

	gtlbe = FUNC2(vcpu_e500, tlbsel, esel);

	switch (tlbsel) {
	case 0:
		priv = &vcpu_e500->gtlb_priv[tlbsel][esel];

		/* Triggers after clear_tlb_privs or on initial mapping */
		if (!(priv->ref.flags & E500_TLB_VALID)) {
			FUNC4(vcpu_e500, esel, &stlbe);
		} else {
			FUNC3(vcpu, gtlbe, BOOK3E_PAGESZ_4K,
						&priv->ref, eaddr, &stlbe);
			FUNC8(vcpu_e500, gtlbe, &stlbe, 0, 0);
		}
		break;

	case 1: {
		gfn_t gfn = gpaddr >> PAGE_SHIFT;
		FUNC5(vcpu_e500, eaddr, gfn, gtlbe, &stlbe,
				     esel);
		break;
	}

	default:
		FUNC0();
		break;
	}
}