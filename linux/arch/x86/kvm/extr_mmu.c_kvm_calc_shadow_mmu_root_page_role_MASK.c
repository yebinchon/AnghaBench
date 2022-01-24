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
struct TYPE_4__ {int smep_andnot_wp; int smap_andnot_wp; int direct; int gpte_is_8_bytes; int /*<<< orphan*/  level; } ;
struct TYPE_3__ {scalar_t__ cr4_smap; scalar_t__ cr4_smep; } ;
union kvm_mmu_role {TYPE_2__ base; TYPE_1__ ext; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PT32E_ROOT_LEVEL ; 
 int /*<<< orphan*/  PT64_ROOT_4LEVEL ; 
 int /*<<< orphan*/  PT64_ROOT_5LEVEL ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 union kvm_mmu_role FUNC5 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static union kvm_mmu_role
FUNC6(struct kvm_vcpu *vcpu, bool base_only)
{
	union kvm_mmu_role role = FUNC5(vcpu, base_only);

	role.base.smep_andnot_wp = role.ext.cr4_smep &&
		!FUNC4(vcpu);
	role.base.smap_andnot_wp = role.ext.cr4_smap &&
		!FUNC4(vcpu);
	role.base.direct = !FUNC3(vcpu);
	role.base.gpte_is_8_bytes = !!FUNC2(vcpu);

	if (!FUNC1(vcpu))
		role.base.level = PT32E_ROOT_LEVEL;
	else if (FUNC0(vcpu))
		role.base.level = PT64_ROOT_5LEVEL;
	else
		role.base.level = PT64_ROOT_4LEVEL;

	return role;
}