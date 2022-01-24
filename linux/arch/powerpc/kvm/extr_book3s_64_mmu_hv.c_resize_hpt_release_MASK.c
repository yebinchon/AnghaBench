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
struct TYPE_4__ {scalar_t__ virt; } ;
struct kvm_resize_hpt {TYPE_2__ hpt; int /*<<< orphan*/  error; } ;
struct TYPE_3__ {struct kvm_resize_hpt* resize_hpt; int /*<<< orphan*/  mmu_setup_lock; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_resize_hpt*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct kvm *kvm, struct kvm_resize_hpt *resize)
{
	if (FUNC0(!FUNC3(&kvm->arch.mmu_setup_lock)))
		return;

	if (!resize)
		return;

	if (resize->error != -EBUSY) {
		if (resize->hpt.virt)
			FUNC2(&resize->hpt);
		FUNC1(resize);
	}

	if (kvm->arch.resize_hpt == resize)
		kvm->arch.resize_hpt = NULL;
}