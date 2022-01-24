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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct kvm_vcpu*,int,int) ; 

void FUNC5(struct kvm_vcpu *vcpu, u64 guest_vp, u64 vp_mask)
{
	FUNC4("v", vcpu, guest_vp, vp_mask);
	guest_vp &= vp_mask;

	switch(vp_mask) {
	case 0xfffffffffULL:
		FUNC3(vcpu, guest_vp);
		break;
#ifdef CONFIG_PPC_BOOK3S_64
	case 0xffffffff0ULL:
		kvmppc_mmu_pte_vflush_64k(vcpu, guest_vp);
		break;
#endif
	case 0xffffff000ULL:
		FUNC2(vcpu, guest_vp);
		break;
	default:
		FUNC0(1);
		return;
	}
}