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
struct TYPE_2__ {unsigned long n_used_mmu_pages; unsigned long n_max_mmu_pages; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  invalid_list ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kvm *kvm, unsigned long goal_nr_mmu_pages)
{
	FUNC0(invalid_list);

	FUNC3(&kvm->mmu_lock);

	if (kvm->arch.n_used_mmu_pages > goal_nr_mmu_pages) {
		/* Need to free some mmu pages to achieve the goal. */
		while (kvm->arch.n_used_mmu_pages > goal_nr_mmu_pages)
			if (!FUNC2(kvm, &invalid_list))
				break;

		FUNC1(kvm, &invalid_list);
		goal_nr_mmu_pages = kvm->arch.n_used_mmu_pages;
	}

	kvm->arch.n_max_mmu_pages = goal_nr_mmu_pages;

	FUNC4(&kvm->mmu_lock);
}