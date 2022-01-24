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
 int /*<<< orphan*/  FUNC0 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct kvm*,struct kvm_memory_slot*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  slot_rmap_write_protect ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kvm *kvm,
				      struct kvm_memory_slot *memslot)
{
	bool flush;

	FUNC3(&kvm->mmu_lock);
	flush = FUNC2(kvm, memslot, slot_rmap_write_protect,
				      false);
	FUNC4(&kvm->mmu_lock);

	/*
	 * kvm_mmu_slot_remove_write_access() and kvm_vm_ioctl_get_dirty_log()
	 * which do tlb flush out of mmu-lock should be serialized by
	 * kvm->slots_lock otherwise tlb flush would be missed.
	 */
	FUNC1(&kvm->slots_lock);

	/*
	 * We can flush all the TLBs out of the mmu lock without TLB
	 * corruption since we just change the spte from writable to
	 * readonly so that we only need to care the case of changing
	 * spte from present to present (changing the spte from present
	 * to nonpresent will flush all the TLBs immediately), in other
	 * words, the only case we care is mmu_spte_update() where we
	 * have checked SPTE_HOST_WRITEABLE | SPTE_MMU_WRITEABLE
	 * instead of PT_WRITABLE_MASK, that means it does not depend
	 * on PT_WRITABLE_MASK anymore.
	 */
	if (flush)
		FUNC0(kvm, memslot->base_gfn,
			memslot->npages);
}