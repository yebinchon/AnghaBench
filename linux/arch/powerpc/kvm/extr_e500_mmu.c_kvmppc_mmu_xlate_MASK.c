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
typedef  int u64 ;
struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_book3e_206_tlb_entry {int dummy; } ;
typedef  int gva_t ;
typedef  int gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct kvm_book3e_206_tlb_entry* FUNC1 (struct kvmppc_vcpu_e500*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_book3e_206_tlb_entry*) ; 
 int FUNC3 (struct kvm_book3e_206_tlb_entry*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 struct kvmppc_vcpu_e500* FUNC5 (struct kvm_vcpu*) ; 

gpa_t FUNC6(struct kvm_vcpu *vcpu, unsigned int index,
			gva_t eaddr)
{
	struct kvmppc_vcpu_e500 *vcpu_e500 = FUNC5(vcpu);
	struct kvm_book3e_206_tlb_entry *gtlbe;
	u64 pgmask;

	gtlbe = FUNC1(vcpu_e500, FUNC4(index), FUNC0(index));
	pgmask = FUNC2(gtlbe) - 1;

	return FUNC3(gtlbe) | (eaddr & pgmask);
}