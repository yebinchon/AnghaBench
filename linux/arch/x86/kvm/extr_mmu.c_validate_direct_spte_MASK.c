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
typedef  int u64 ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct TYPE_2__ {unsigned int access; } ;
struct kvm_mmu_page {int /*<<< orphan*/  gfn; TYPE_1__ role; } ;

/* Variables and functions */
 int PT64_BASE_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_mmu_page*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct kvm_mmu_page* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu, u64 *sptep,
				   unsigned direct_access)
{
	if (FUNC2(*sptep) && !FUNC1(*sptep)) {
		struct kvm_mmu_page *child;

		/*
		 * For the direct sp, if the guest pte's dirty bit
		 * changed form clean to dirty, it will corrupt the
		 * sp's access: allow writable in the read-only sp,
		 * so we should update the spte at this point to get
		 * a new sp with the correct access.
		 */
		child = FUNC4(*sptep & PT64_BASE_ADDR_MASK);
		if (child->role.access == direct_access)
			return;

		FUNC0(child, sptep);
		FUNC3(vcpu->kvm, child->gfn, 1);
	}
}