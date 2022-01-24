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
struct kvm_memory_slot {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lpid; int /*<<< orphan*/  pgtable; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ *,unsigned long,unsigned int,struct kvm_memory_slot*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct kvm *kvm, struct kvm_memory_slot *memslot,
		    unsigned long gfn)
{
	pte_t *ptep;
	unsigned long gpa = gfn << PAGE_SHIFT;
	unsigned int shift;

	ptep = FUNC0(kvm->arch.pgtable, gpa, NULL, &shift);
	if (ptep && FUNC2(*ptep))
		FUNC1(kvm, ptep, gpa, shift, memslot,
				 kvm->arch.lpid);
	return 0;				
}