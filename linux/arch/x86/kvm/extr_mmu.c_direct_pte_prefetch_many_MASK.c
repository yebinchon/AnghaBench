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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {unsigned int access; int /*<<< orphan*/  level; } ;
struct kvm_mmu_page {int spt; TYPE_1__ role; } ;
struct kvm_memory_slot {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 unsigned int ACC_WRITE_MASK ; 
 int PTE_PREFETCH_NUM ; 
 struct kvm_memory_slot* FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct kvm_memory_slot*,int /*<<< orphan*/ ,struct page**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_mmu_page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu,
				    struct kvm_mmu_page *sp,
				    u64 *start, u64 *end)
{
	struct page *pages[PTE_PREFETCH_NUM];
	struct kvm_memory_slot *slot;
	unsigned access = sp->role.access;
	int i, ret;
	gfn_t gfn;

	gfn = FUNC2(sp, start - sp->spt);
	slot = FUNC0(vcpu, gfn, access & ACC_WRITE_MASK);
	if (!slot)
		return -1;

	ret = FUNC1(slot, gfn, pages, end - start);
	if (ret <= 0)
		return -1;

	for (i = 0; i < ret; i++, gfn++, start++) {
		FUNC3(vcpu, start, access, 0, sp->role.level, gfn,
			     FUNC4(pages[i]), true, true);
		FUNC5(pages[i]);
	}

	return 0;
}