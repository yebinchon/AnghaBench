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
typedef  enum cpuhp_smt_control { ____Placeholder_cpuhp_smt_control } cpuhp_smt_control ;

/* Variables and functions */
 scalar_t__ CPU_SMT_DISABLED ; 
 scalar_t__ CPU_SMT_FORCE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ cpu_smt_control ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 

int FUNC4(void)
{
	int ret = 0;
	/*
	 * We reached this while coming out of hibernation. This means
	 * that SMT siblings are sleeping in hlt, as mwait is not safe
	 * against control transition during resume (see comment in
	 * hibernate_resume_nonboot_cpu_disable()).
	 *
	 * If the resumed kernel has SMT disabled, we have to take all the
	 * SMT siblings out of hlt, and offline them again so that they
	 * end up in mwait proper.
	 *
	 * Called with hotplug disabled.
	 */
	FUNC1();
	if (cpu_smt_control == CPU_SMT_DISABLED ||
			cpu_smt_control == CPU_SMT_FORCE_DISABLED) {
		enum cpuhp_smt_control old = cpu_smt_control;

		ret = FUNC3();
		if (ret)
			goto out;
		ret = FUNC2(old);
		if (ret)
			goto out;
	}
out:
	FUNC0();
	return ret;
}