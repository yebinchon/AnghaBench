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
struct kvmppc_vcpu_e500 {unsigned long tlb1_min_eaddr; unsigned int* gtlb_offset; int /*<<< orphan*/  tlb1_max_eaddr; struct kvm_book3e_206_tlb_entry* gtlb_arch; TYPE_1__* gtlb_params; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;
struct TYPE_2__ {int entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kvmppc_vcpu_e500 *vcpu_e500)
{
	int size = vcpu_e500->gtlb_params[1].entries;
	unsigned int offset;
	gva_t eaddr;
	int i;

	vcpu_e500->tlb1_min_eaddr = ~0UL;
	vcpu_e500->tlb1_max_eaddr = 0;
	offset = vcpu_e500->gtlb_offset[1];

	for (i = 0; i < size; i++) {
		struct kvm_book3e_206_tlb_entry *tlbe =
			&vcpu_e500->gtlb_arch[offset + i];

		if (!FUNC2(tlbe))
			continue;

		eaddr = FUNC0(tlbe);
		vcpu_e500->tlb1_min_eaddr =
				FUNC4(vcpu_e500->tlb1_min_eaddr, eaddr);

		eaddr = FUNC1(tlbe);
		vcpu_e500->tlb1_max_eaddr =
				FUNC3(vcpu_e500->tlb1_max_eaddr, eaddr);
	}
}