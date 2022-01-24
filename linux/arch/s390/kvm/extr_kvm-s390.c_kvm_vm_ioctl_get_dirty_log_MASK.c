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
struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int /*<<< orphan*/  dirty_bitmap; } ;
struct kvm_dirty_log {int /*<<< orphan*/  slot; } ;
struct kvm {int /*<<< orphan*/  slots_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  KVM_USER_MEM_SLOTS ; 
 struct kvm_memory_slot* FUNC0 (struct kvm_memslots*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct kvm_memory_slot*) ; 
 int FUNC2 (struct kvm*,struct kvm_dirty_log*,int*) ; 
 scalar_t__ FUNC3 (struct kvm*) ; 
 struct kvm_memslots* FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,struct kvm_memory_slot*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct kvm *kvm,
			       struct kvm_dirty_log *log)
{
	int r;
	unsigned long n;
	struct kvm_memslots *slots;
	struct kvm_memory_slot *memslot;
	int is_dirty = 0;

	if (FUNC3(kvm))
		return -EINVAL;

	FUNC7(&kvm->slots_lock);

	r = -EINVAL;
	if (log->slot >= KVM_USER_MEM_SLOTS)
		goto out;

	slots = FUNC4(kvm);
	memslot = FUNC0(slots, log->slot);
	r = -ENOENT;
	if (!memslot->dirty_bitmap)
		goto out;

	FUNC5(kvm, memslot);
	r = FUNC2(kvm, log, &is_dirty);
	if (r)
		goto out;

	/* Clear the dirty log */
	if (is_dirty) {
		n = FUNC1(memslot);
		FUNC6(memslot->dirty_bitmap, 0, n);
	}
	r = 0;
out:
	FUNC8(&kvm->slots_lock);
	return r;
}