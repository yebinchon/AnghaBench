#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int /*<<< orphan*/ * prev_roots; int /*<<< orphan*/  root_hpa; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_PAGE ; 
 size_t KVM_MMU_NUM_PREV_ROOTS ; 
 int /*<<< orphan*/  KVM_MMU_ROOT_INFO_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ tdp_enabled ; 

void FUNC4(struct kvm_vcpu *vcpu, bool reset_roots)
{
	if (reset_roots) {
		uint i;

		vcpu->arch.mmu->root_hpa = INVALID_PAGE;

		for (i = 0; i < KVM_MMU_NUM_PREV_ROOTS; i++)
			vcpu->arch.mmu->prev_roots[i] = KVM_MMU_ROOT_INFO_INVALID;
	}

	if (FUNC3(vcpu))
		FUNC0(vcpu);
	else if (tdp_enabled)
		FUNC2(vcpu);
	else
		FUNC1(vcpu);
}