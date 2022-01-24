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
struct TYPE_2__ {struct kvm_lpage_info** lpage_info; struct kvm_lpage_info** rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; unsigned long userspace_addr; TYPE_1__ arch; } ;
struct kvm_lpage_info {int disallow_lpage; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int KVM_NR_PAGE_SIZES ; 
 int FUNC0 (int) ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC1 (unsigned long,unsigned long,int) ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lpage_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct kvm_memory_slot*,unsigned long) ; 

int FUNC6(struct kvm *kvm, struct kvm_memory_slot *slot,
			    unsigned long npages)
{
	int i;

	for (i = 0; i < KVM_NR_PAGE_SIZES; ++i) {
		struct kvm_lpage_info *linfo;
		unsigned long ugfn;
		int lpages;
		int level = i + 1;

		lpages = FUNC1(slot->base_gfn + npages - 1,
				      slot->base_gfn, level) + 1;

		slot->arch.rmap[i] =
			FUNC2(lpages, sizeof(*slot->arch.rmap[i]),
				 GFP_KERNEL_ACCOUNT);
		if (!slot->arch.rmap[i])
			goto out_free;
		if (i == 0)
			continue;

		linfo = FUNC2(lpages, sizeof(*linfo), GFP_KERNEL_ACCOUNT);
		if (!linfo)
			goto out_free;

		slot->arch.lpage_info[i - 1] = linfo;

		if (slot->base_gfn & (FUNC0(level) - 1))
			linfo[0].disallow_lpage = 1;
		if ((slot->base_gfn + npages) & (FUNC0(level) - 1))
			linfo[lpages - 1].disallow_lpage = 1;
		ugfn = slot->userspace_addr >> PAGE_SHIFT;
		/*
		 * If the gfn and userspace address are not aligned wrt each
		 * other, or if explicitly asked to, disable large page
		 * support for this slot
		 */
		if ((slot->base_gfn ^ ugfn) & (FUNC0(level) - 1) ||
		    !FUNC4()) {
			unsigned long j;

			for (j = 0; j < lpages; ++j)
				linfo[j].disallow_lpage = 1;
		}
	}

	if (FUNC5(slot, npages))
		goto out_free;

	return 0;

out_free:
	for (i = 0; i < KVM_NR_PAGE_SIZES; ++i) {
		FUNC3(slot->arch.rmap[i]);
		slot->arch.rmap[i] = NULL;
		if (i == 0)
			continue;

		FUNC3(slot->arch.lpage_info[i - 1]);
		slot->arch.lpage_info[i - 1] = NULL;
	}
	return -ENOMEM;
}