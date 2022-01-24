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
struct kvm_resize_hpt {unsigned long order; long error; } ;
struct kvm_ppc_resize_hpt {unsigned long flags; unsigned long shift; } ;
struct TYPE_2__ {int mmu_ready; int /*<<< orphan*/  mmu_setup_lock; struct kvm_resize_hpt* resize_hpt; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 long EINVAL ; 
 long EIO ; 
 long ENXIO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  resize_hpt_boot_vcpu ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_resize_hpt*) ; 
 long FUNC6 (struct kvm_resize_hpt*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,struct kvm_resize_hpt*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

long FUNC9(struct kvm *kvm,
				    struct kvm_ppc_resize_hpt *rhpt)
{
	unsigned long flags = rhpt->flags;
	unsigned long shift = rhpt->shift;
	struct kvm_resize_hpt *resize;
	long ret;

	if (flags != 0 || FUNC1(kvm))
		return -EINVAL;

	if (shift && ((shift < 18) || (shift > 46)))
		return -EINVAL;

	FUNC2(&kvm->arch.mmu_setup_lock);

	resize = kvm->arch.resize_hpt;

	/* This shouldn't be possible */
	ret = -EIO;
	if (FUNC0(!kvm->arch.mmu_ready))
		goto out_no_hpt;

	/* Stop VCPUs from running while we mess with the HPT */
	kvm->arch.mmu_ready = 0;
	FUNC8();

	/* Boot all CPUs out of the guest so they re-read
	 * mmu_ready */
	FUNC4(resize_hpt_boot_vcpu, NULL, 1);

	ret = -ENXIO;
	if (!resize || (resize->order != shift))
		goto out;

	ret = resize->error;
	if (ret)
		goto out;

	ret = FUNC6(resize);
	if (ret)
		goto out;

	FUNC5(resize);

out:
	/* Let VCPUs run again */
	kvm->arch.mmu_ready = 1;
	FUNC8();
out_no_hpt:
	FUNC7(kvm, resize);
	FUNC3(&kvm->arch.mmu_setup_lock);
	return ret;
}