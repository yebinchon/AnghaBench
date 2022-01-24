#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_5__ {int /*<<< orphan*/  mmu_recycled; } ;
struct TYPE_6__ {TYPE_1__ stat; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ KVM_MIN_FREE_MMU_PAGES ; 
 scalar_t__ KVM_REFILL_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  invalid_list ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu)
{
	FUNC0(invalid_list);

	if (FUNC3(FUNC1(vcpu->kvm) >= KVM_MIN_FREE_MMU_PAGES))
		return 0;

	while (FUNC1(vcpu->kvm) < KVM_REFILL_PAGES) {
		if (!FUNC4(vcpu->kvm, &invalid_list))
			break;

		++vcpu->kvm->stat.mmu_recycled;
	}
	FUNC2(vcpu->kvm, &invalid_list);

	if (!FUNC1(vcpu->kvm))
		return -ENOSPC;
	return 0;
}