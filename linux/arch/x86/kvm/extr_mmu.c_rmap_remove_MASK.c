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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_rmap_head {int dummy; } ;
struct kvm_mmu_page {int spt; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct kvm_rmap_head*) ; 
 struct kvm_rmap_head* FUNC2 (struct kvm*,int /*<<< orphan*/ ,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_mmu_page*,int /*<<< orphan*/ *) ; 
 struct kvm_mmu_page* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kvm *kvm, u64 *spte)
{
	struct kvm_mmu_page *sp;
	gfn_t gfn;
	struct kvm_rmap_head *rmap_head;

	sp = FUNC4(FUNC0(spte));
	gfn = FUNC3(sp, spte - sp->spt);
	rmap_head = FUNC2(kvm, gfn, sp);
	FUNC1(spte, rmap_head);
}