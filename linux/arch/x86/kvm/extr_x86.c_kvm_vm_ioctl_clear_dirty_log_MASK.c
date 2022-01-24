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
struct kvm_clear_dirty_log {int dummy; } ;
struct kvm {int /*<<< orphan*/  slots_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_log_dirty ) (struct kvm*) ;} ;

/* Variables and functions */
 int FUNC0 (struct kvm*,struct kvm_clear_dirty_log*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 TYPE_1__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 

int FUNC6(struct kvm *kvm, struct kvm_clear_dirty_log *log)
{
	bool flush = false;
	int r;

	FUNC3(&kvm->slots_lock);

	/*
	 * Flush potentially hardware-cached dirty pages to dirty_bitmap.
	 */
	if (kvm_x86_ops->flush_log_dirty)
		kvm_x86_ops->flush_log_dirty(kvm);

	r = FUNC0(kvm, log, &flush);

	/*
	 * All the TLBs can be flushed out of mmu lock, see the comments in
	 * kvm_mmu_slot_remove_write_access().
	 */
	FUNC2(&kvm->slots_lock);
	if (flush)
		FUNC1(kvm);

	FUNC4(&kvm->slots_lock);
	return r;
}