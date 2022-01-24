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
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu_page {int* spt; } ;
typedef  int /*<<< orphan*/  (* inspect_spte_fn ) (struct kvm_vcpu*,int*,int) ;

/* Variables and functions */
 int PT64_BASE_ADDR_MASK ; 
 int PT64_ENT_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct kvm_mmu_page* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu, struct kvm_mmu_page *sp,
			    inspect_spte_fn fn, int level)
{
	int i;

	for (i = 0; i < PT64_ENT_PER_PAGE; ++i) {
		u64 *ent = sp->spt;

		fn(vcpu, ent + i, level);

		if (FUNC1(ent[i]) &&
		      !FUNC0(ent[i], level)) {
			struct kvm_mmu_page *child;

			child = FUNC2(ent[i] & PT64_BASE_ADDR_MASK);
			FUNC3(vcpu, child, fn, level - 1);
		}
	}
}