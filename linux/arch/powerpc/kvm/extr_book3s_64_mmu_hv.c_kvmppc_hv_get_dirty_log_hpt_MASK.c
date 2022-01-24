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
struct TYPE_2__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long npages; TYPE_1__ arch; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,unsigned long,int) ; 

long FUNC4(struct kvm *kvm,
			struct kvm_memory_slot *memslot, unsigned long *map)
{
	unsigned long i;
	unsigned long *rmapp;

	FUNC1();
	rmapp = memslot->arch.rmap;
	for (i = 0; i < memslot->npages; ++i) {
		int npages = FUNC0(kvm, rmapp);
		/*
		 * Note that if npages > 0 then i must be a multiple of npages,
		 * since we always put huge-page HPTEs in the rmap chain
		 * corresponding to their page base address.
		 */
		if (npages)
			FUNC3(map, i, npages);
		++rmapp;
	}
	FUNC2();
	return 0;
}