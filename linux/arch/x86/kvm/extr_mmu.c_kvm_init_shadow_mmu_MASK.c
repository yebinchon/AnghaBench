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
struct TYPE_6__ {int /*<<< orphan*/  word; } ;
union kvm_mmu_role {scalar_t__ as_u64; TYPE_2__ base; } ;
struct TYPE_5__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_7__ {scalar_t__ as_u64; } ;
struct kvm_mmu {TYPE_3__ mmu_role; } ;
struct TYPE_8__ {int /*<<< orphan*/  word; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 union kvm_mmu_role FUNC3 (struct kvm_vcpu*,int) ; 
 TYPE_4__ mmu_base_role_mask ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,struct kvm_mmu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,struct kvm_mmu*) ; 

void FUNC9(struct kvm_vcpu *vcpu)
{
	struct kvm_mmu *context = vcpu->arch.mmu;
	union kvm_mmu_role new_role =
		FUNC3(vcpu, false);

	new_role.base.word &= mmu_base_role_mask.word;
	if (new_role.as_u64 == context->mmu_role.as_u64)
		return;

	if (!FUNC2(vcpu))
		FUNC4(vcpu, context);
	else if (FUNC0(vcpu))
		FUNC7(vcpu, context);
	else if (FUNC1(vcpu))
		FUNC5(vcpu, context);
	else
		FUNC6(vcpu, context);

	context->mmu_role.as_u64 = new_role.as_u64;
	FUNC8(vcpu, context);
}