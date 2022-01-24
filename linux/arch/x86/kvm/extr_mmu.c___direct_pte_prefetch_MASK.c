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
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  direct; } ;
struct kvm_mmu_page {int /*<<< orphan*/ * spt; TYPE_1__ role; } ;

/* Variables and functions */
 int PTE_PREFETCH_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,struct kvm_mmu_page*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu,
				  struct kvm_mmu_page *sp, u64 *sptep)
{
	u64 *spte, *start = NULL;
	int i;

	FUNC0(!sp->role.direct);

	i = (sptep - sp->spt) & ~(PTE_PREFETCH_NUM - 1);
	spte = sp->spt + i;

	for (i = 0; i < PTE_PREFETCH_NUM; i++, spte++) {
		if (FUNC2(*spte) || spte == sptep) {
			if (!start)
				continue;
			if (FUNC1(vcpu, sp, start, spte) < 0)
				break;
			start = NULL;
		} else if (!start)
			start = spte;
	}
}