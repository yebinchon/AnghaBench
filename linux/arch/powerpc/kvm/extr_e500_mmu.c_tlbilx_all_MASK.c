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
struct kvmppc_vcpu_e500 {TYPE_1__* gtlb_params; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
struct TYPE_2__ {int entries; } ;

/* Variables and functions */
 struct kvm_book3e_206_tlb_entry* FUNC0 (struct kvmppc_vcpu_e500*,int,int) ; 
 int FUNC1 (struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_vcpu_e500*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmppc_vcpu_e500*,int,int) ; 

__attribute__((used)) static void FUNC4(struct kvmppc_vcpu_e500 *vcpu_e500, int tlbsel,
		       int pid, int type)
{
	struct kvm_book3e_206_tlb_entry *tlbe;
	int tid, esel;

	/* invalidate all entries */
	for (esel = 0; esel < vcpu_e500->gtlb_params[tlbsel].entries; esel++) {
		tlbe = FUNC0(vcpu_e500, tlbsel, esel);
		tid = FUNC1(tlbe);
		if (type == 0 || tid == pid) {
			FUNC2(vcpu_e500, tlbsel, esel);
			FUNC3(vcpu_e500, tlbsel, esel);
		}
	}
}