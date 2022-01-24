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
struct kvm_memory_slot {int /*<<< orphan*/  npages; int /*<<< orphan*/  base_gfn; } ;
struct kvm {int /*<<< orphan*/  slots_lock; int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  __rmap_clear_dirty ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct kvm*,struct kvm_memory_slot*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kvm *kvm,
				   struct kvm_memory_slot *memslot)
{
	bool flush;

	FUNC3(&kvm->mmu_lock);
	flush = FUNC2(kvm, memslot, __rmap_clear_dirty, false);
	FUNC4(&kvm->mmu_lock);

	FUNC1(&kvm->slots_lock);

	/*
	 * It's also safe to flush TLBs out of mmu lock here as currently this
	 * function is only used for dirty logging, in which case flushing TLB
	 * out of mmu lock also guarantees no dirty pages will be lost in
	 * dirty_bitmap.
	 */
	if (flush)
		FUNC0(kvm, memslot->base_gfn,
				memslot->npages);
}