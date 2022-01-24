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
struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_book3e_206_tlb_entry {scalar_t__ mas1; } ;

/* Variables and functions */
 struct kvm_book3e_206_tlb_entry* FUNC0 (struct kvmppc_vcpu_e500*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_book3e_206_tlb_entry*) ; 
 scalar_t__ FUNC2 (struct kvmppc_vcpu_e500*,struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmppc_vcpu_e500*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(
				struct kvmppc_vcpu_e500 *vcpu_e500,
				int tlbsel, int esel)
{
	struct kvm_book3e_206_tlb_entry *gtlbe =
		FUNC0(vcpu_e500, tlbsel, esel);

	if (FUNC4(FUNC1(gtlbe)))
		return -1;

	if (tlbsel == 1 && FUNC2(vcpu_e500, gtlbe))
		FUNC3(vcpu_e500);

	gtlbe->mas1 = 0;

	return 0;
}