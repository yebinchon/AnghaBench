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
typedef  int u64 ;
struct TYPE_3__ {int /*<<< orphan*/  level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
struct TYPE_4__ {int /*<<< orphan*/  lpages; } ;
struct kvm {TYPE_2__ stat; } ;

/* Variables and functions */
 int PT64_BASE_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_mmu_page*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 struct kvm_mmu_page* FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct kvm *kvm, struct kvm_mmu_page *sp,
			     u64 *spte)
{
	u64 pte;
	struct kvm_mmu_page *child;

	pte = *spte;
	if (FUNC5(pte)) {
		if (FUNC3(pte, sp->role.level)) {
			FUNC1(kvm, spte);
			if (FUNC2(pte))
				--kvm->stat.lpages;
		} else {
			child = FUNC7(pte & PT64_BASE_ADDR_MASK);
			FUNC0(child, spte);
		}
		return true;
	}

	if (FUNC4(pte))
		FUNC6(spte);

	return false;
}