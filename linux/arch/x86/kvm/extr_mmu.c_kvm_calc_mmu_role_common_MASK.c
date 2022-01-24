#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nxe; int /*<<< orphan*/  guest_mode; int /*<<< orphan*/  smm; int /*<<< orphan*/  cr0_wp; int /*<<< orphan*/  access; } ;
union kvm_mmu_role {int /*<<< orphan*/  ext; TYPE_1__ base; int /*<<< orphan*/  member_0; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACC_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static union kvm_mmu_role FUNC5(struct kvm_vcpu *vcpu,
						   bool base_only)
{
	union kvm_mmu_role role = {0};

	role.base.access = ACC_ALL;
	role.base.nxe = !!FUNC1(vcpu);
	role.base.cr0_wp = FUNC3(vcpu);
	role.base.smm = FUNC2(vcpu);
	role.base.guest_mode = FUNC0(vcpu);

	if (base_only)
		return role;

	role.ext = FUNC4(vcpu);

	return role;
}