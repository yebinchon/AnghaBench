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
typedef  int u64 ;
struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  kvm; } ;
struct kvm_mmu_page {int spt; scalar_t__ unsync; } ;
typedef  int kvm_pfn_t ;
typedef  int hpa_t ;
typedef  int /*<<< orphan*/  gfn_t ;
struct TYPE_3__ {int /*<<< orphan*/  root_level; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PT64_BASE_ADDR_MASK ; 
 int PT_PAGE_TABLE_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct kvm_mmu_page*,int,...) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_mmu_page*,int*) ; 
 int FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 struct kvm_mmu_page* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu, u64 *sptep, int level)
{
	struct kvm_mmu_page *sp;
	gfn_t gfn;
	kvm_pfn_t pfn;
	hpa_t hpa;

	sp = FUNC7(FUNC0(sptep));

	if (sp->unsync) {
		if (level != PT_PAGE_TABLE_LEVEL) {
			FUNC1(vcpu->kvm, "unsync sp: %p "
				     "level = %d\n", sp, level);
			return;
		}
	}

	if (!FUNC4(*sptep) || !FUNC3(*sptep, level))
		return;

	gfn = FUNC5(sp, sptep - sp->spt);
	pfn = FUNC6(vcpu, gfn);

	if (FUNC2(pfn))
		return;

	hpa =  pfn << PAGE_SHIFT;
	if ((*sptep & PT64_BASE_ADDR_MASK) != hpa)
		FUNC1(vcpu->kvm, "levels %d pfn %llx hpa %llx "
			     "ent %llxn", vcpu->arch.mmu->root_level, pfn,
			     hpa, *sptep);
}