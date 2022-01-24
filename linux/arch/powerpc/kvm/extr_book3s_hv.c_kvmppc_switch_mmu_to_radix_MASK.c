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
struct TYPE_2__ {int radix; int /*<<< orphan*/  hpt; } ;
struct kvm {TYPE_1__ arch; int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int LPCR_GTSE ; 
 int LPCR_HR ; 
 int LPCR_UPRT ; 
 int LPCR_VPM1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct kvm *kvm)
{
	int err;

	err = FUNC1(kvm);
	if (err)
		return err;
	FUNC2(kvm);
	/* Mutual exclusion with kvm_unmap_hva_range etc. */
	FUNC4(&kvm->mmu_lock);
	kvm->arch.radix = 1;
	FUNC5(&kvm->mmu_lock);
	FUNC0(&kvm->arch.hpt);
	FUNC3(kvm, LPCR_UPRT | LPCR_GTSE | LPCR_HR,
			   LPCR_VPM1 | LPCR_UPRT | LPCR_GTSE | LPCR_HR);
	return 0;
}