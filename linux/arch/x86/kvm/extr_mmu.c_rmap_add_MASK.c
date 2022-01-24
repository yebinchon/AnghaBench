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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_rmap_head {int dummy; } ;
struct kvm_mmu_page {int spt; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct kvm_rmap_head* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_mmu_page*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct kvm_mmu_page* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ *,struct kvm_rmap_head*) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
{
	struct kvm_mmu_page *sp;
	struct kvm_rmap_head *rmap_head;

	sp = FUNC3(FUNC0(spte));
	FUNC2(sp, spte - sp->spt, gfn);
	rmap_head = FUNC1(vcpu->kvm, gfn, sp);
	return FUNC4(vcpu, spte, rmap_head);
}