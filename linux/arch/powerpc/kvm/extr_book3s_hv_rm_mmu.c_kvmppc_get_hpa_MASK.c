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
struct TYPE_2__ {int /*<<< orphan*/  pgdir; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm_memory_slot {int flags; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int H_PARAMETER ; 
 int H_SUCCESS ; 
 int H_TOO_HARD ; 
 int KVM_MEMSLOT_INVALID ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned long FUNC1 (struct kvm_memory_slot*,unsigned long) ; 
 struct kvm_memory_slot* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu, unsigned long gpa,
			  int writing, unsigned long *hpa,
			  struct kvm_memory_slot **memslot_p)
{
	struct kvm *kvm = vcpu->kvm;
	struct kvm_memory_slot *memslot;
	unsigned long gfn, hva, pa, psize = PAGE_SHIFT;
	unsigned int shift;
	pte_t *ptep, pte;

	/* Find the memslot for this address */
	gfn = gpa >> PAGE_SHIFT;
	memslot = FUNC2(FUNC3(kvm), gfn);
	if (!memslot || (memslot->flags & KVM_MEMSLOT_INVALID))
		return H_PARAMETER;

	/* Translate to host virtual address */
	hva = FUNC1(memslot, gfn);

	/* Try to find the host pte for that virtual address */
	ptep = FUNC0(vcpu->arch.pgdir, hva, NULL, &shift);
	if (!ptep)
		return H_TOO_HARD;
	pte = FUNC4(ptep, writing);
	if (!FUNC6(pte))
		return H_TOO_HARD;

	/* Convert to a physical address */
	if (shift)
		psize = 1UL << shift;
	pa = FUNC5(pte) << PAGE_SHIFT;
	pa |= hva & (psize - 1);
	pa |= gpa & ~PAGE_MASK;

	if (hpa)
		*hpa = pa;
	if (memslot_p)
		*memslot_p = memslot;

	return H_SUCCESS;
}