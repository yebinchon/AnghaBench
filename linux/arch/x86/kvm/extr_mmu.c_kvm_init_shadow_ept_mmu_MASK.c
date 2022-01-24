#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  word; } ;
union kvm_mmu_role {scalar_t__ as_u64; TYPE_4__ base; } ;
struct TYPE_5__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_6__ {scalar_t__ as_u64; } ;
struct kvm_mmu {int nx; int ept_ad; int direct_map; TYPE_2__ mmu_role; void* root_level; int /*<<< orphan*/  update_pte; int /*<<< orphan*/  invlpg; int /*<<< orphan*/  sync_page; int /*<<< orphan*/  gva_to_gpa; int /*<<< orphan*/  page_fault; void* shadow_root_level; } ;
typedef  int /*<<< orphan*/  gpa_t ;
struct TYPE_7__ {int /*<<< orphan*/  word; } ;

/* Variables and functions */
 void* PT64_ROOT_4LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,TYPE_4__,int) ; 
 int /*<<< orphan*/  ept_gva_to_gpa ; 
 int /*<<< orphan*/  ept_invlpg ; 
 int /*<<< orphan*/  ept_page_fault ; 
 int /*<<< orphan*/  ept_sync_page ; 
 int /*<<< orphan*/  ept_update_pte ; 
 union kvm_mmu_role FUNC1 (struct kvm_vcpu*,int,int) ; 
 TYPE_3__ mmu_base_role_mask ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,struct kvm_mmu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct kvm_mmu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,struct kvm_mmu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,struct kvm_mmu*,int) ; 

void FUNC7(struct kvm_vcpu *vcpu, bool execonly,
			     bool accessed_dirty, gpa_t new_eptp)
{
	struct kvm_mmu *context = vcpu->arch.mmu;
	union kvm_mmu_role new_role =
		FUNC1(vcpu, accessed_dirty,
						   execonly);

	FUNC0(vcpu, new_eptp, new_role.base, false);

	new_role.base.word &= mmu_base_role_mask.word;
	if (new_role.as_u64 == context->mmu_role.as_u64)
		return;

	context->shadow_root_level = PT64_ROOT_4LEVEL;

	context->nx = true;
	context->ept_ad = accessed_dirty;
	context->page_fault = ept_page_fault;
	context->gva_to_gpa = ept_gva_to_gpa;
	context->sync_page = ept_sync_page;
	context->invlpg = ept_invlpg;
	context->update_pte = ept_update_pte;
	context->root_level = PT64_ROOT_4LEVEL;
	context->direct_map = false;
	context->mmu_role.as_u64 = new_role.as_u64;

	FUNC5(vcpu, context, true);
	FUNC6(vcpu, context, true);
	FUNC4(vcpu, context);
	FUNC3(vcpu, context, execonly);
	FUNC2(vcpu, context, execonly);
}