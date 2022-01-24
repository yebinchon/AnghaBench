#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int /*<<< orphan*/  CPUHP_AP_X86_KVM_CLK_ONLINE ; 
 int /*<<< orphan*/  X86_FEATURE_CONSTANT_TSC ; 
 int /*<<< orphan*/  X86_HYPER_MS_HYPERV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_guest_cbs ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * kvm_x86_ops ; 
 int /*<<< orphan*/  kvmclock_cpufreq_notifier_block ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pvclock_gtod_notifier ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shared_msrs ; 
 int /*<<< orphan*/  x86_fpu_cache ; 

void FUNC11(void)
{
#ifdef CONFIG_X86_64
	if (hypervisor_is_type(X86_HYPER_MS_HYPERV))
		clear_hv_tscchange_cb();
#endif
	FUNC7();
	FUNC9(&kvm_guest_cbs);

	if (!FUNC0(X86_FEATURE_CONSTANT_TSC))
		FUNC2(&kvmclock_cpufreq_notifier_block,
					    CPUFREQ_TRANSITION_NOTIFIER);
	FUNC3(CPUHP_AP_X86_KVM_CLK_ONLINE);
#ifdef CONFIG_X86_64
	pvclock_gtod_unregister_notifier(&pvclock_gtod_notifier);
#endif
	kvm_x86_ops = NULL;
	FUNC8();
	FUNC4(shared_msrs);
	FUNC6(x86_fpu_cache);
}