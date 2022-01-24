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
struct TYPE_2__ {int /*<<< orphan*/  spapr_tce_tables; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FW_FEATURE_SET_MODE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ kvm_global_user_count ; 
 int /*<<< orphan*/  kvm_global_user_count_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct kvm *kvm)
{
#ifdef CONFIG_PPC64
	WARN_ON(!list_empty(&kvm->arch.spapr_tce_tables));
#endif

	if (FUNC2(FW_FEATURE_SET_MODE)) {
		FUNC5(&kvm_global_user_count_lock);
		FUNC0(kvm_global_user_count == 0);
		if (--kvm_global_user_count == 0)
			FUNC4();
		FUNC6(&kvm_global_user_count_lock);
	}
}