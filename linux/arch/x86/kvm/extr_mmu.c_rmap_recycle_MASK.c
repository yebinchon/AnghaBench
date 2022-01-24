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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_rmap_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  level; } ;
struct kvm_mmu_page {TYPE_1__ role; int /*<<< orphan*/  gfn; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct kvm_rmap_head* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_rmap_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_mmu_page* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
{
	struct kvm_rmap_head *rmap_head;
	struct kvm_mmu_page *sp;

	sp = FUNC5(FUNC1(spte));

	rmap_head = FUNC2(vcpu->kvm, gfn, sp);

	FUNC4(vcpu->kvm, rmap_head, NULL, gfn, sp->role.level, 0);
	FUNC3(vcpu->kvm, sp->gfn,
			FUNC0(sp->role.level));
}