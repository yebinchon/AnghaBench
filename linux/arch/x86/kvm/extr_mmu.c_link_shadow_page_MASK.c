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
struct kvm_mmu_page {scalar_t__ unsync; scalar_t__ unsync_children; int /*<<< orphan*/  spt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PT_WRITABLE_MASK ; 
 int SPTE_AD_DISABLED_MASK ; 
 int VMX_EPT_WRITABLE_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct kvm_mmu_page*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int shadow_accessed_mask ; 
 int shadow_me_mask ; 
 int shadow_present_mask ; 
 int shadow_user_mask ; 
 int shadow_x_mask ; 
 scalar_t__ FUNC5 (struct kvm_mmu_page*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu, u64 *sptep,
			     struct kvm_mmu_page *sp)
{
	u64 spte;

	FUNC0(VMX_EPT_WRITABLE_MASK != PT_WRITABLE_MASK);

	spte = FUNC1(sp->spt) | shadow_present_mask | PT_WRITABLE_MASK |
	       shadow_user_mask | shadow_x_mask | shadow_me_mask;

	if (FUNC5(sp))
		spte |= SPTE_AD_DISABLED_MASK;
	else
		spte |= shadow_accessed_mask;

	FUNC4(sptep, spte);

	FUNC3(vcpu, sp, sptep);

	if (sp->unsync_children || sp->unsync)
		FUNC2(sptep);
}