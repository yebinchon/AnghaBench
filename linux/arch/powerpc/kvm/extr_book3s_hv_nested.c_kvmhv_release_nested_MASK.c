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
struct kvm_nested_guest {int /*<<< orphan*/  shadow_lpid; scalar_t__ shadow_pgtable; struct kvm* l1_host; } ;
struct kvm {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_nested_guest*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct kvm_nested_guest *gp)
{
	struct kvm *kvm = gp->l1_host;

	if (gp->shadow_pgtable) {
		/*
		 * No vcpu is using this struct and no call to
		 * kvmhv_get_nested can find this struct,
		 * so we don't need to hold kvm->mmu_lock.
		 */
		FUNC3(kvm, gp->shadow_pgtable,
					  gp->shadow_lpid);
		FUNC4(kvm->mm, gp->shadow_pgtable);
	}
	FUNC1(gp->shadow_lpid, 0, 0);
	FUNC2(gp->shadow_lpid);
	FUNC0(gp);
}