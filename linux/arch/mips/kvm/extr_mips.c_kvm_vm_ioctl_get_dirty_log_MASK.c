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
struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm_dirty_log {int /*<<< orphan*/  slot; } ;
struct kvm {int /*<<< orphan*/  slots_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_shadow_memslot ) (struct kvm*,struct kvm_memory_slot*) ;} ;

/* Variables and functions */
 struct kvm_memory_slot* FUNC0 (struct kvm_memslots*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm*,struct kvm_dirty_log*,int*) ; 
 struct kvm_memslots* FUNC2 (struct kvm*) ; 
 TYPE_1__* kvm_mips_callbacks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,struct kvm_memory_slot*) ; 

int FUNC6(struct kvm *kvm, struct kvm_dirty_log *log)
{
	struct kvm_memslots *slots;
	struct kvm_memory_slot *memslot;
	bool flush = false;
	int r;

	FUNC3(&kvm->slots_lock);

	r = FUNC1(kvm, log, &flush);

	if (flush) {
		slots = FUNC2(kvm);
		memslot = FUNC0(slots, log->slot);

		/* Let implementation handle TLB/GVA invalidation */
		kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
	}

	FUNC4(&kvm->slots_lock);
	return r;
}