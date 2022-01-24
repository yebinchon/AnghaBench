#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvmppc_vcpu_e500 {int /*<<< orphan*/  tlb1_max_eaddr; int /*<<< orphan*/  tlb1_min_eaddr; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct kvm_book3e_206_tlb_entry*) ; 
 unsigned long FUNC1 (struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 struct kvmppc_vcpu_e500* FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu,
				struct kvm_book3e_206_tlb_entry *gtlbe)
{
	unsigned long start, end, size;
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC5(vcpu);

	if (!FUNC2(gtlbe))
		return;

	size = FUNC0(gtlbe);
	start = FUNC1(gtlbe) & ~(size - 1);
	end = start + size - 1;

	vcpu_e500->tlb1_min_eaddr = FUNC4(vcpu_e500->tlb1_min_eaddr, start);
	vcpu_e500->tlb1_max_eaddr = FUNC3(vcpu_e500->tlb1_max_eaddr, end);
}