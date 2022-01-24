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
typedef  unsigned long u8 ;
struct kvm_s390_cmma_log {unsigned long start_gfn; unsigned long count; } ;
struct kvm_memslots {TYPE_1__* memslots; } ;
struct kvm_memory_slot {unsigned long base_gfn; unsigned long npages; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmma_dirty_pages; } ;
struct kvm {int /*<<< orphan*/  mm; TYPE_2__ arch; } ;
struct TYPE_3__ {unsigned long base_gfn; unsigned long npages; } ;

/* Variables and functions */
 unsigned long KVM_S390_MAX_BIT_DISTANCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long*) ; 
 unsigned long FUNC2 (struct kvm*,unsigned long) ; 
 struct kvm_memory_slot* FUNC3 (struct kvm*,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 struct kvm_memslots* FUNC5 (struct kvm*) ; 
 unsigned long FUNC6 (struct kvm_memslots*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_memory_slot*) ; 
 scalar_t__ FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct kvm *kvm, struct kvm_s390_cmma_log *args,
			     u8 *res, unsigned long bufsize)
{
	unsigned long mem_end, cur_gfn, next_gfn, hva, pgstev;
	struct kvm_memslots *slots = FUNC5(kvm);
	struct kvm_memory_slot *ms;

	cur_gfn = FUNC6(slots, args->start_gfn);
	ms = FUNC3(kvm, cur_gfn);
	args->count = 0;
	args->start_gfn = cur_gfn;
	if (!ms)
		return 0;
	next_gfn = FUNC6(slots, cur_gfn + 1);
	mem_end = slots->memslots[0].base_gfn + slots->memslots[0].npages;

	while (args->count < bufsize) {
		hva = FUNC2(kvm, cur_gfn);
		if (FUNC4(hva))
			return 0;
		/* Decrement only if we actually flipped the bit to 0 */
		if (FUNC8(cur_gfn - ms->base_gfn, FUNC7(ms)))
			FUNC0(&kvm->arch.cmma_dirty_pages);
		if (FUNC1(kvm->mm, hva, &pgstev) < 0)
			pgstev = 0;
		/* Save the value */
		res[args->count++] = (pgstev >> 24) & 0x43;
		/* If the next bit is too far away, stop. */
		if (next_gfn > cur_gfn + KVM_S390_MAX_BIT_DISTANCE)
			return 0;
		/* If we reached the previous "next", find the next one */
		if (cur_gfn == next_gfn)
			next_gfn = FUNC6(slots, cur_gfn + 1);
		/* Reached the end of memory or of the buffer, stop */
		if ((next_gfn >= mem_end) ||
		    (next_gfn - args->start_gfn >= bufsize))
			return 0;
		cur_gfn++;
		/* Reached the end of the current memslot, take the next one. */
		if (cur_gfn - ms->base_gfn >= ms->npages) {
			ms = FUNC3(kvm, cur_gfn);
			if (!ms)
				return 0;
		}
	}
	return 0;
}