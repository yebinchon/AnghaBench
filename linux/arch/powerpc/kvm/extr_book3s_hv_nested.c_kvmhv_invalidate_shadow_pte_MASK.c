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
struct kvm_nested_guest {int /*<<< orphan*/  shadow_lpid; int /*<<< orphan*/  shadow_pgtable; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ *,long,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct kvm_vcpu *vcpu,
					struct kvm_nested_guest *gp,
					long gpa, int *shift_ret)
{
	struct kvm *kvm = vcpu->kvm;
	bool ret = false;
	pte_t *ptep;
	int shift;

	FUNC3(&kvm->mmu_lock);
	ptep = FUNC0(gp->shadow_pgtable, gpa, NULL, &shift);
	if (!shift)
		shift = PAGE_SHIFT;
	if (ptep && FUNC2(*ptep)) {
		FUNC1(kvm, ptep, gpa, shift, NULL, gp->shadow_lpid);
		ret = true;
	}
	FUNC4(&kvm->mmu_lock);

	if (shift_ret)
		*shift_ret = shift;
	return ret;
}