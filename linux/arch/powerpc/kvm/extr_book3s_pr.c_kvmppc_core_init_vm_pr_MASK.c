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
struct TYPE_2__ {int /*<<< orphan*/  hpt_mutex; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_SET_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int kvm_global_user_count ; 
 int /*<<< orphan*/  kvm_global_user_count_lock ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct kvm *kvm)
{
	FUNC2(&kvm->arch.hpt_mutex);

#ifdef CONFIG_PPC_BOOK3S_64
	/* Start out with the default set of hcalls enabled */
	kvmppc_pr_init_default_hcalls(kvm);
#endif

	if (FUNC0(FW_FEATURE_SET_MODE)) {
		FUNC4(&kvm_global_user_count_lock);
		if (++kvm_global_user_count == 1)
			FUNC3();
		FUNC5(&kvm_global_user_count_lock);
	}
	return 0;
}