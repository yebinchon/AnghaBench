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
struct kvm_memslots {int used_slots; struct kvm_memory_slot* memslots; } ;
struct kvm_memory_slot {scalar_t__ npages; int /*<<< orphan*/  dirty_bitmap; } ;
struct TYPE_2__ {int migration_mode; int /*<<< orphan*/  cmma_dirty_pages; int /*<<< orphan*/  use_cmma; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KVM_REQ_START_MIGRATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_memory_slot*) ; 
 struct kvm_memslots* FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_memory_slot*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct kvm *kvm)
{
	struct kvm_memory_slot *ms;
	struct kvm_memslots *slots;
	unsigned long ram_pages = 0;
	int slotnr;

	/* migration mode already enabled */
	if (kvm->arch.migration_mode)
		return 0;
	slots = FUNC2(kvm);
	if (!slots || !slots->used_slots)
		return -EINVAL;

	if (!kvm->arch.use_cmma) {
		kvm->arch.migration_mode = 1;
		return 0;
	}
	/* mark all the pages in active slots as dirty */
	for (slotnr = 0; slotnr < slots->used_slots; slotnr++) {
		ms = slots->memslots + slotnr;
		if (!ms->dirty_bitmap)
			return -EINVAL;
		/*
		 * The second half of the bitmap is only used on x86,
		 * and would be wasted otherwise, so we put it to good
		 * use here to keep track of the state of the storage
		 * attributes.
		 */
		FUNC5(FUNC4(ms), 0xff, FUNC1(ms));
		ram_pages += ms->npages;
	}
	FUNC0(&kvm->arch.cmma_dirty_pages, ram_pages);
	kvm->arch.migration_mode = 1;
	FUNC3(kvm, KVM_REQ_START_MIGRATION);
	return 0;
}