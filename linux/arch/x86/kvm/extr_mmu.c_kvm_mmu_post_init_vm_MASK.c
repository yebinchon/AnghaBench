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
struct TYPE_2__ {int /*<<< orphan*/  nx_lpage_recovery_thread; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_nx_lpage_recovery_worker ; 
 int FUNC1 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int FUNC2(struct kvm *kvm)
{
	int err;

	err = FUNC1(kvm, kvm_nx_lpage_recovery_worker, 0,
					  "kvm-nx-lpage-recovery",
					  &kvm->arch.nx_lpage_recovery_thread);
	if (!err)
		FUNC0(kvm->arch.nx_lpage_recovery_thread);

	return err;
}