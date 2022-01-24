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
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_nested_guest {int dummy; } ;
struct TYPE_2__ {int max_nested_lpid; struct kvm_nested_guest** nested_guests; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct kvm_nested_guest*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu, int ric)
{
	struct kvm *kvm = vcpu->kvm;
	struct kvm_nested_guest *gp;
	int i;

	FUNC1(&kvm->mmu_lock);
	for (i = 0; i <= kvm->arch.max_nested_lpid; i++) {
		gp = kvm->arch.nested_guests[i];
		if (gp) {
			FUNC2(&kvm->mmu_lock);
			FUNC0(vcpu, gp, ric);
			FUNC1(&kvm->mmu_lock);
		}
	}
	FUNC2(&kvm->mmu_lock);
}