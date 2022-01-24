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
struct kvm_rmap_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 struct kvm_memory_slot* FUNC0 (struct kvm_memslots*,int /*<<< orphan*/ ) ; 
 struct kvm_rmap_head* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_memory_slot*) ; 
 struct kvm_memslots* FUNC2 (struct kvm*,TYPE_1__) ; 

__attribute__((used)) static struct kvm_rmap_head *FUNC3(struct kvm *kvm, gfn_t gfn,
					 struct kvm_mmu_page *sp)
{
	struct kvm_memslots *slots;
	struct kvm_memory_slot *slot;

	slots = FUNC2(kvm, sp->role);
	slot = FUNC0(slots, gfn);
	return FUNC1(gfn, sp->role.level, slot);
}