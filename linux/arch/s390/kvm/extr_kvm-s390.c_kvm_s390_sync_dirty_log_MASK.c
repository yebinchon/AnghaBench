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
struct kvm_memory_slot {scalar_t__ base_gfn; scalar_t__ npages; } ;
struct TYPE_2__ {struct gmap* gmap; } ;
struct kvm {TYPE_1__ arch; } ;
struct gmap {int dummy; } ;
typedef  scalar_t__ gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int _PAGE_ENTRIES ; 
 int /*<<< orphan*/  bitmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 unsigned long FUNC5 (struct kvm_memory_slot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct gmap*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*,scalar_t__) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct kvm *kvm,
				    struct kvm_memory_slot *memslot)
{
	int i;
	gfn_t cur_gfn, last_gfn;
	unsigned long gaddr, vmaddr;
	struct gmap *gmap = kvm->arch.gmap;
	FUNC0(bitmap, _PAGE_ENTRIES);

	/* Loop over all guest segments */
	cur_gfn = memslot->base_gfn;
	last_gfn = memslot->base_gfn + memslot->npages;
	for (; cur_gfn <= last_gfn; cur_gfn += _PAGE_ENTRIES) {
		gaddr = FUNC4(cur_gfn);
		vmaddr = FUNC5(memslot, cur_gfn);
		if (FUNC7(vmaddr))
			continue;

		FUNC1(bitmap, _PAGE_ENTRIES);
		FUNC6(gmap, bitmap, gaddr, vmaddr);
		for (i = 0; i < _PAGE_ENTRIES; i++) {
			if (FUNC9(i, bitmap))
				FUNC8(kvm, cur_gfn + i);
		}

		if (FUNC3(current))
			return;
		FUNC2();
	}
}