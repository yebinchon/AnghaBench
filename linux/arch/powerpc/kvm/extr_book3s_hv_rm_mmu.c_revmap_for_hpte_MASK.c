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
struct TYPE_2__ {int /*<<< orphan*/ * rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; TYPE_1__ arch; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 struct kvm_memory_slot* FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 unsigned long* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long *FUNC5(struct kvm *kvm, unsigned long hpte_v,
				      unsigned long hpte_gr,
				      struct kvm_memory_slot **memslotp,
				      unsigned long *gfnp)
{
	struct kvm_memory_slot *memslot;
	unsigned long *rmap;
	unsigned long gfn;

	gfn = FUNC1(hpte_gr, FUNC3(hpte_v, hpte_gr));
	memslot = FUNC0(FUNC2(kvm), gfn);
	if (memslotp)
		*memslotp = memslot;
	if (gfnp)
		*gfnp = gfn;
	if (!memslot)
		return NULL;

	rmap = FUNC4(&memslot->arch.rmap[gfn - memslot->base_gfn]);
	return rmap;
}