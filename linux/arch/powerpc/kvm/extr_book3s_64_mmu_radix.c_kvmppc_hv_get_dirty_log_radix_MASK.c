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
struct kvm_memory_slot {unsigned long npages; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm*,struct kvm_memory_slot*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long,int) ; 

long FUNC2(struct kvm *kvm,
			struct kvm_memory_slot *memslot, unsigned long *map)
{
	unsigned long i, j;
	int npages;

	for (i = 0; i < memslot->npages; i = j) {
		npages = FUNC0(kvm, memslot, i);

		/*
		 * Note that if npages > 0 then i must be a multiple of npages,
		 * since huge pages are only used to back the guest at guest
		 * real addresses that are a multiple of their size.
		 * Since we have at most one PTE covering any given guest
		 * real address, if npages > 1 we can skip to i + npages.
		 */
		j = i + 1;
		if (npages) {
			FUNC1(map, i, npages);
			j = i + npages;
		}
	}
	return 0;
}