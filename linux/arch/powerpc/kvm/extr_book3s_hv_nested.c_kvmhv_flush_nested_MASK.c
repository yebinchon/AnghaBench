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
struct kvm_nested_guest {scalar_t__ l1_gr_to_hr; int /*<<< orphan*/  shadow_lpid; int /*<<< orphan*/  shadow_pgtable; struct kvm* l1_host; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_nested_guest*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_nested_guest*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct kvm_nested_guest *gp)
{
	struct kvm *kvm = gp->l1_host;

	FUNC4(&kvm->mmu_lock);
	FUNC3(kvm, gp->shadow_pgtable, gp->shadow_lpid);
	FUNC5(&kvm->mmu_lock);
	FUNC0(gp->shadow_lpid);
	FUNC2(gp);
	if (gp->l1_gr_to_hr == 0)
		FUNC1(gp);
}