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
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_nested_guest {int /*<<< orphan*/  tlb_lock; int /*<<< orphan*/  shadow_lpid; int /*<<< orphan*/  shadow_pgtable; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_nested_guest*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu,
				     struct kvm_nested_guest *gp, int ric)
{
	struct kvm *kvm = vcpu->kvm;

	FUNC3(&gp->tlb_lock);
	switch (ric) {
	case 0:
		/* Invalidate TLB */
		FUNC5(&kvm->mmu_lock);
		FUNC2(kvm, gp->shadow_pgtable,
					  gp->shadow_lpid);
		FUNC0(gp->shadow_lpid);
		FUNC6(&kvm->mmu_lock);
		break;
	case 1:
		/*
		 * Invalidate PWC
		 * We don't cache this -> nothing to do
		 */
		break;
	case 2:
		/* Invalidate TLB, PWC and caching of partition table entries */
		FUNC1(gp);
		break;
	default:
		break;
	}
	FUNC4(&gp->tlb_lock);
}