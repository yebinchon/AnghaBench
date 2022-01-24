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
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int root_level; int shadow_root_level; int direct_map; int /*<<< orphan*/  update_pte; int /*<<< orphan*/  invlpg; int /*<<< orphan*/  sync_page; int /*<<< orphan*/  gva_to_gpa; int /*<<< orphan*/  page_fault; int /*<<< orphan*/  nx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  paging64_gva_to_gpa ; 
 int /*<<< orphan*/  paging64_invlpg ; 
 int /*<<< orphan*/  paging64_page_fault ; 
 int /*<<< orphan*/  paging64_sync_page ; 
 int /*<<< orphan*/  paging64_update_pte ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,struct kvm_mmu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,struct kvm_mmu*,int) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu,
					 struct kvm_mmu *context,
					 int level)
{
	context->nx = FUNC1(vcpu);
	context->root_level = level;

	FUNC3(vcpu, context);
	FUNC5(vcpu, context, false);
	FUNC6(vcpu, context, false);
	FUNC4(vcpu, context);

	FUNC0(!FUNC2(vcpu));
	context->page_fault = paging64_page_fault;
	context->gva_to_gpa = paging64_gva_to_gpa;
	context->sync_page = paging64_sync_page;
	context->invlpg = paging64_invlpg;
	context->update_pte = paging64_update_pte;
	context->shadow_root_level = level;
	context->direct_map = false;
}