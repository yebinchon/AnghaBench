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
struct tlbe_ref {int /*<<< orphan*/  flags; } ;
struct kvmppc_vcpu_e500 {TYPE_1__** gtlb_priv; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;
struct TYPE_2__ {struct tlbe_ref ref; } ;

/* Variables and functions */
 scalar_t__ BOOK3E_PAGESZ_4K ; 
 int /*<<< orphan*/  E500_TLB_TLB0 ; 
 scalar_t__ FUNC0 (struct kvm_book3e_206_tlb_entry*) ; 
 int FUNC1 (struct kvmppc_vcpu_e500*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_book3e_206_tlb_entry*,int,struct kvm_book3e_206_tlb_entry*,struct tlbe_ref*) ; 
 int FUNC2 (struct kvmppc_vcpu_e500*,struct tlbe_ref*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmppc_vcpu_e500*,struct kvm_book3e_206_tlb_entry*,struct kvm_book3e_206_tlb_entry*,int,int) ; 

__attribute__((used)) static int FUNC4(struct kvmppc_vcpu_e500 *vcpu_e500,
		u64 gvaddr, gfn_t gfn, struct kvm_book3e_206_tlb_entry *gtlbe,
		struct kvm_book3e_206_tlb_entry *stlbe, int esel)
{
	struct tlbe_ref *ref = &vcpu_e500->gtlb_priv[1][esel].ref;
	int sesel;
	int r;

	r = FUNC1(vcpu_e500, gvaddr, gfn, gtlbe, 1, stlbe,
				   ref);
	if (r)
		return r;

	/* Use TLB0 when we can only map a page with 4k */
	if (FUNC0(stlbe) == BOOK3E_PAGESZ_4K) {
		vcpu_e500->gtlb_priv[1][esel].ref.flags |= E500_TLB_TLB0;
		FUNC3(vcpu_e500, gtlbe, stlbe, 0, 0);
		return 0;
	}

	/* Otherwise map into TLB1 */
	sesel = FUNC2(vcpu_e500, ref, esel);
	FUNC3(vcpu_e500, gtlbe, stlbe, 1, sesel);

	return 0;
}