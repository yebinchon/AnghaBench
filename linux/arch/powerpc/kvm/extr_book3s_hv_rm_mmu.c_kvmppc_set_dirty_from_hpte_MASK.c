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
struct kvm_memory_slot {scalar_t__ dirty_bitmap; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 struct kvm_memory_slot* FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_memory_slot*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct kvm *kvm,
				unsigned long hpte_v, unsigned long hpte_gr)
{
	struct kvm_memory_slot *memslot;
	unsigned long gfn;
	unsigned long psize;

	psize = FUNC3(hpte_v, hpte_gr);
	gfn = FUNC1(hpte_gr, psize);
	memslot = FUNC0(FUNC2(kvm), gfn);
	if (memslot && memslot->dirty_bitmap)
		FUNC4(memslot, gfn, psize);
}