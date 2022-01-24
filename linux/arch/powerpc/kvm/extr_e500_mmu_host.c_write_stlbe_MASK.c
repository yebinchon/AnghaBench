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
struct kvmppc_vcpu_e500 {int /*<<< orphan*/  vcpu; } ;
struct kvm_book3e_206_tlb_entry {int /*<<< orphan*/  mas1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_vcpu_e500*,int,int,struct kvm_book3e_206_tlb_entry*) ; 

__attribute__((used)) static void FUNC5(struct kvmppc_vcpu_e500 *vcpu_e500,
			struct kvm_book3e_206_tlb_entry *gtlbe,
			struct kvm_book3e_206_tlb_entry *stlbe,
			int stlbsel, int sesel)
{
	int stid;

	FUNC2();
	stid = FUNC1(&vcpu_e500->vcpu, gtlbe);

	stlbe->mas1 |= FUNC0(stid);
	FUNC4(vcpu_e500, stlbsel, sesel, stlbe);
	FUNC3();
}