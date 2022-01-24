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
struct page {int dummy; } ;
struct kvm_memory_slot {scalar_t__ dirty_bitmap; scalar_t__ base_gfn; } ;
struct kvm {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 struct kvm_memory_slot* FUNC0 (struct kvm*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct page* FUNC5 (void*) ; 

void FUNC6(struct kvm *kvm, void *va, unsigned long gpa,
			     bool dirty)
{
	struct page *page = FUNC5(va);
	struct kvm_memory_slot *memslot;
	unsigned long gfn;
	int srcu_idx;

	FUNC1(page);

	if (!dirty)
		return;

	/* We need to mark this page dirty in the memslot dirty_bitmap, if any */
	gfn = gpa >> PAGE_SHIFT;
	srcu_idx = FUNC3(&kvm->srcu);
	memslot = FUNC0(kvm, gfn);
	if (memslot && memslot->dirty_bitmap)
		FUNC2(gfn - memslot->base_gfn, memslot->dirty_bitmap);
	FUNC4(&kvm->srcu, srcu_idx);
}