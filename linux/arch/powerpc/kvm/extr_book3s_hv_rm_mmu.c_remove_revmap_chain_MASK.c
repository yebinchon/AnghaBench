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
struct revmap_entry {unsigned long guest_rpte; size_t forw; size_t back; } ;
struct kvm_memory_slot {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rev; } ;
struct TYPE_4__ {TYPE_1__ hpt; } ;
struct kvm {TYPE_2__ arch; } ;

/* Variables and functions */
 unsigned long HPTE_R_C ; 
 unsigned long HPTE_R_R ; 
 unsigned long KVMPPC_RMAP_INDEX ; 
 unsigned long KVMPPC_RMAP_PRESENT ; 
 unsigned long KVMPPC_RMAP_RC_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_memory_slot*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 struct revmap_entry* FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long* FUNC4 (struct kvm*,unsigned long,unsigned long,struct kvm_memory_slot**,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 

__attribute__((used)) static void FUNC6(struct kvm *kvm, long pte_index,
				struct revmap_entry *rev,
				unsigned long hpte_v, unsigned long hpte_r)
{
	struct revmap_entry *next, *prev;
	unsigned long ptel, head;
	unsigned long *rmap;
	unsigned long rcbits;
	struct kvm_memory_slot *memslot;
	unsigned long gfn;

	rcbits = hpte_r & (HPTE_R_R | HPTE_R_C);
	ptel = rev->guest_rpte |= rcbits;
	rmap = FUNC4(kvm, hpte_v, ptel, &memslot, &gfn);
	if (!rmap)
		return;
	FUNC2(rmap);

	head = *rmap & KVMPPC_RMAP_INDEX;
	next = FUNC3(&kvm->arch.hpt.rev[rev->forw]);
	prev = FUNC3(&kvm->arch.hpt.rev[rev->back]);
	next->back = rev->back;
	prev->forw = rev->forw;
	if (head == pte_index) {
		head = rev->forw;
		if (head == pte_index)
			*rmap &= ~(KVMPPC_RMAP_PRESENT | KVMPPC_RMAP_INDEX);
		else
			*rmap = (*rmap & ~KVMPPC_RMAP_INDEX) | head;
	}
	*rmap |= rcbits << KVMPPC_RMAP_RC_SHIFT;
	if (rcbits & HPTE_R_C)
		FUNC1(memslot, gfn,
					FUNC0(hpte_v, hpte_r));
	FUNC5(rmap);
}