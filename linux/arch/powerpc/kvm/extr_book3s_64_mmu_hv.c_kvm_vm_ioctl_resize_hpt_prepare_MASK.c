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
struct kvm_resize_hpt {unsigned long order; int error; int /*<<< orphan*/  work; struct kvm* kvm; } ;
struct kvm_ppc_resize_hpt {unsigned long flags; unsigned long shift; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmu_setup_lock; struct kvm_resize_hpt* resize_hpt; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int EBUSY ; 
 long EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm*) ; 
 struct kvm_resize_hpt* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resize_hpt_prepare_work ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,struct kvm_resize_hpt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

long FUNC7(struct kvm *kvm,
				     struct kvm_ppc_resize_hpt *rhpt)
{
	unsigned long flags = rhpt->flags;
	unsigned long shift = rhpt->shift;
	struct kvm_resize_hpt *resize;
	int ret;

	if (flags != 0 || FUNC1(kvm))
		return -EINVAL;

	if (shift && ((shift < 18) || (shift > 46)))
		return -EINVAL;

	FUNC3(&kvm->arch.mmu_setup_lock);

	resize = kvm->arch.resize_hpt;

	if (resize) {
		if (resize->order == shift) {
			/* Suitable resize in progress? */
			ret = resize->error;
			if (ret == -EBUSY)
				ret = 100; /* estimated time in ms */
			else if (ret)
				FUNC5(kvm, resize);

			goto out;
		}

		/* not suitable, cancel it */
		FUNC5(kvm, resize);
	}

	ret = 0;
	if (!shift)
		goto out; /* nothing to do */

	/* start new resize */

	resize = FUNC2(sizeof(*resize), GFP_KERNEL);
	if (!resize) {
		ret = -ENOMEM;
		goto out;
	}

	resize->error = -EBUSY;
	resize->order = shift;
	resize->kvm = kvm;
	FUNC0(&resize->work, resize_hpt_prepare_work);
	kvm->arch.resize_hpt = resize;

	FUNC6(&resize->work);

	ret = 100; /* estimated time in ms */

out:
	FUNC4(&kvm->arch.mmu_setup_lock);
	return ret;
}