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
struct kvm_hpt_info {int dummy; } ;
struct kvm_resize_hpt {struct kvm_hpt_info hpt; struct kvm* kvm; } ;
struct TYPE_2__ {struct kvm_hpt_info hpt; } ;
struct kvm {int /*<<< orphan*/  srcu; int /*<<< orphan*/  mmu_lock; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,struct kvm_hpt_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_resize_hpt*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct kvm_resize_hpt *resize)
{
	struct kvm *kvm = resize->kvm;
	struct kvm_hpt_info hpt_tmp;

	/* Exchange the pending tables in the resize structure with
	 * the active tables */

	FUNC3(resize, "resize_hpt_pivot()\n");

	FUNC4(&kvm->mmu_lock);
	asm volatile("ptesync" : : : "memory");

	hpt_tmp = kvm->arch.hpt;
	FUNC1(kvm, &resize->hpt);
	resize->hpt = hpt_tmp;

	FUNC5(&kvm->mmu_lock);

	FUNC6(&kvm->srcu);

	if (FUNC0(CPU_FTR_ARCH_300))
		FUNC2(kvm);

	FUNC3(resize, "resize_hpt_pivot() done\n");
}