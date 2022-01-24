#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  word; } ;
union kvm_mmu_role {scalar_t__ as_u64; TYPE_2__ base; } ;
struct TYPE_6__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_8__ {scalar_t__ as_u64; } ;
struct kvm_mmu {int direct_map; int nx; void* gva_to_gpa; scalar_t__ root_level; int /*<<< orphan*/  inject_page_fault; int /*<<< orphan*/  get_pdptr; int /*<<< orphan*/  get_cr3; int /*<<< orphan*/  set_cr3; int /*<<< orphan*/  shadow_root_level; int /*<<< orphan*/  update_pte; int /*<<< orphan*/  invlpg; int /*<<< orphan*/  sync_page; int /*<<< orphan*/  page_fault; TYPE_3__ mmu_role; } ;
struct TYPE_10__ {int /*<<< orphan*/  set_tdp_cr3; int /*<<< orphan*/  (* get_tdp_level ) (struct kvm_vcpu*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  word; } ;

/* Variables and functions */
 scalar_t__ PT32E_ROOT_LEVEL ; 
 scalar_t__ PT32_ROOT_LEVEL ; 
 scalar_t__ PT64_ROOT_4LEVEL ; 
 scalar_t__ PT64_ROOT_5LEVEL ; 
 int /*<<< orphan*/  get_cr3 ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 void* FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 union kvm_mmu_role FUNC5 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  kvm_inject_page_fault ; 
 int /*<<< orphan*/  kvm_pdptr_read ; 
 TYPE_5__* kvm_x86_ops ; 
 TYPE_4__ mmu_base_role_mask ; 
 void* nonpaging_gva_to_gpa ; 
 int /*<<< orphan*/  nonpaging_invlpg ; 
 int /*<<< orphan*/  nonpaging_sync_page ; 
 int /*<<< orphan*/  nonpaging_update_pte ; 
 void* paging32_gva_to_gpa ; 
 void* paging64_gva_to_gpa ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  tdp_page_fault ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,struct kvm_mmu*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,struct kvm_mmu*,int) ; 

__attribute__((used)) static void FUNC12(struct kvm_vcpu *vcpu)
{
	struct kvm_mmu *context = vcpu->arch.mmu;
	union kvm_mmu_role new_role =
		FUNC5(vcpu, false);

	new_role.base.word &= mmu_base_role_mask.word;
	if (new_role.as_u64 == context->mmu_role.as_u64)
		return;

	context->mmu_role.as_u64 = new_role.as_u64;
	context->page_fault = tdp_page_fault;
	context->sync_page = nonpaging_sync_page;
	context->invlpg = nonpaging_invlpg;
	context->update_pte = nonpaging_update_pte;
	context->shadow_root_level = kvm_x86_ops->get_tdp_level(vcpu);
	context->direct_map = true;
	context->set_cr3 = kvm_x86_ops->set_tdp_cr3;
	context->get_cr3 = get_cr3;
	context->get_pdptr = kvm_pdptr_read;
	context->inject_page_fault = kvm_inject_page_fault;

	if (!FUNC4(vcpu)) {
		context->nx = false;
		context->gva_to_gpa = nonpaging_gva_to_gpa;
		context->root_level = 0;
	} else if (FUNC1(vcpu)) {
		context->nx = FUNC2(vcpu);
		context->root_level = FUNC0(vcpu) ?
				PT64_ROOT_5LEVEL : PT64_ROOT_4LEVEL;
		FUNC6(vcpu, context);
		context->gva_to_gpa = paging64_gva_to_gpa;
	} else if (FUNC3(vcpu)) {
		context->nx = FUNC2(vcpu);
		context->root_level = PT32E_ROOT_LEVEL;
		FUNC6(vcpu, context);
		context->gva_to_gpa = paging64_gva_to_gpa;
	} else {
		context->nx = false;
		context->root_level = PT32_ROOT_LEVEL;
		FUNC6(vcpu, context);
		context->gva_to_gpa = paging32_gva_to_gpa;
	}

	FUNC10(vcpu, context, false);
	FUNC11(vcpu, context, false);
	FUNC9(vcpu, context);
	FUNC7(vcpu, context);
}