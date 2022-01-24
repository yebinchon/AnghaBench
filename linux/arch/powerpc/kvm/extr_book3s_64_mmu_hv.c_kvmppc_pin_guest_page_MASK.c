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
struct kvm_memory_slot {int flags; } ;
struct kvm {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FOLL_WRITE ; 
 int KVM_MEMSLOT_INVALID ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC0 (unsigned long,int,int /*<<< orphan*/ ,struct page**) ; 
 unsigned long FUNC1 (struct kvm_memory_slot*,unsigned long) ; 
 struct kvm_memory_slot* FUNC2 (struct kvm*,unsigned long) ; 
 void* FUNC3 (struct page*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void *FUNC6(struct kvm *kvm, unsigned long gpa,
			    unsigned long *nb_ret)
{
	struct kvm_memory_slot *memslot;
	unsigned long gfn = gpa >> PAGE_SHIFT;
	struct page *page, *pages[1];
	int npages;
	unsigned long hva, offset;
	int srcu_idx;

	srcu_idx = FUNC4(&kvm->srcu);
	memslot = FUNC2(kvm, gfn);
	if (!memslot || (memslot->flags & KVM_MEMSLOT_INVALID))
		goto err;
	hva = FUNC1(memslot, gfn);
	npages = FUNC0(hva, 1, FOLL_WRITE, pages);
	if (npages < 1)
		goto err;
	page = pages[0];
	FUNC5(&kvm->srcu, srcu_idx);

	offset = gpa & (PAGE_SIZE - 1);
	if (nb_ret)
		*nb_ret = PAGE_SIZE - offset;
	return FUNC3(page) + offset;

 err:
	FUNC5(&kvm->srcu, srcu_idx);
	return NULL;
}