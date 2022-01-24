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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_memory_slot {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_lpage_level ) () ;} ;

/* Variables and functions */
 int PT_DIRECTORY_LEVEL ; 
 int PT_PAGE_TABLE_LEVEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,struct kvm_memory_slot*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_memory_slot* FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_1__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_memory_slot*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu, gfn_t large_gfn,
			 bool *force_pt_level)
{
	int host_level, level, max_level;
	struct kvm_memory_slot *slot;

	if (FUNC6(*force_pt_level))
		return PT_PAGE_TABLE_LEVEL;

	slot = FUNC2(vcpu, large_gfn);
	*force_pt_level = !FUNC3(slot, true);
	if (FUNC6(*force_pt_level))
		return PT_PAGE_TABLE_LEVEL;

	host_level = FUNC1(vcpu->kvm, large_gfn);

	if (host_level == PT_PAGE_TABLE_LEVEL)
		return host_level;

	max_level = FUNC4(kvm_x86_ops->get_lpage_level(), host_level);

	for (level = PT_DIRECTORY_LEVEL; level <= max_level; ++level)
		if (FUNC0(large_gfn, level, slot))
			break;

	return level - 1;
}