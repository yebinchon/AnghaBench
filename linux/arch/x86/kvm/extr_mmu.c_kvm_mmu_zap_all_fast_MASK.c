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
struct TYPE_2__ {int mmu_valid_gen; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; TYPE_1__ arch; int /*<<< orphan*/  slots_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 

__attribute__((used)) static void FUNC6(struct kvm *kvm)
{
	FUNC2(&kvm->slots_lock);

	FUNC3(&kvm->mmu_lock);
	FUNC5(kvm);

	/*
	 * Toggle mmu_valid_gen between '0' and '1'.  Because slots_lock is
	 * held for the entire duration of zapping obsolete pages, it's
	 * impossible for there to be multiple invalid generations associated
	 * with *valid* shadow pages at any given time, i.e. there is exactly
	 * one valid generation and (at most) one invalid generation.
	 */
	kvm->arch.mmu_valid_gen = kvm->arch.mmu_valid_gen ? 0 : 1;

	/*
	 * Notify all vcpus to reload its shadow page table and flush TLB.
	 * Then all vcpus will switch to new shadow page table with the new
	 * mmu_valid_gen.
	 *
	 * Note: we need to do this under the protection of mmu_lock,
	 * otherwise, vcpu would purge shadow page but miss tlb flush.
	 */
	FUNC0(kvm);

	FUNC1(kvm);
	FUNC4(&kvm->mmu_lock);
}