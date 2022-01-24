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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct TYPE_2__ {int /*<<< orphan*/  level; } ;
struct kvm_mmu_page {TYPE_1__ role; int /*<<< orphan*/  gfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_mmu_page* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu, u64 *sptep)
{
	if (FUNC1(vcpu->kvm, sptep)) {
		struct kvm_mmu_page *sp = FUNC4(FUNC2(sptep));

		FUNC3(vcpu->kvm, sp->gfn,
			FUNC0(sp->role.level));
	}
}