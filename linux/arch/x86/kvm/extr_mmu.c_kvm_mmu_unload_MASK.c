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
struct TYPE_4__ {int /*<<< orphan*/  root_hpa; } ;
struct TYPE_3__ {TYPE_2__ guest_mmu; TYPE_2__ root_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_MMU_ROOTS_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC3(struct kvm_vcpu *vcpu)
{
	FUNC2(vcpu, &vcpu->arch.root_mmu, KVM_MMU_ROOTS_ALL);
	FUNC1(FUNC0(vcpu->arch.root_mmu.root_hpa));
	FUNC2(vcpu, &vcpu->arch.guest_mmu, KVM_MMU_ROOTS_ALL);
	FUNC1(FUNC0(vcpu->arch.guest_mmu.root_hpa));
}