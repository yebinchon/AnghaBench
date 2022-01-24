#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long* rmap; } ;
struct kvm_memory_slot {int base_gfn; TYPE_2__ arch; } ;
struct TYPE_3__ {int /*<<< orphan*/  lpid; int /*<<< orphan*/  pgtable; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned long PTE_RPN_MASK ; 
 int /*<<< orphan*/  _PAGE_DIRTY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,unsigned long,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct kvm *kvm,
				struct kvm_memory_slot *memslot, int pagenum)
{
	unsigned long gfn = memslot->base_gfn + pagenum;
	unsigned long gpa = gfn << PAGE_SHIFT;
	pte_t *ptep;
	unsigned int shift;
	int ret = 0;
	unsigned long old, *rmapp;

	ptep = FUNC0(kvm->arch.pgtable, gpa, NULL, &shift);
	if (ptep && FUNC5(*ptep) && FUNC4(*ptep)) {
		ret = 1;
		if (shift)
			ret = 1 << (shift - PAGE_SHIFT);
		FUNC6(&kvm->mmu_lock);
		old = FUNC3(kvm, ptep, _PAGE_DIRTY, 0,
					      gpa, shift);
		FUNC2(kvm, gpa, shift, kvm->arch.lpid);
		/* Also clear bit in ptes in shadow pgtable for nested guests */
		rmapp = &memslot->arch.rmap[gfn - memslot->base_gfn];
		FUNC1(kvm, rmapp, _PAGE_DIRTY, 0,
					       old & PTE_RPN_MASK,
					       1UL << shift);
		FUNC7(&kvm->mmu_lock);
	}
	return ret;
}