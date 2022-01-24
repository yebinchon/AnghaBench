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
 int /*<<< orphan*/  CPUHP_AP_ONLINE_DYN ; 
 int /*<<< orphan*/  CPUHP_XEN_PREPARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int (*) (unsigned int),int (*) (unsigned int)) ; 
 int FUNC2 (unsigned int) ; 

int FUNC3(int (*cpu_up_prepare_cb)(unsigned int),
		    int (*cpu_dead_cb)(unsigned int))
{
	int rc;

	rc = FUNC1(CPUHP_XEN_PREPARE,
				       "x86/xen/guest:prepare",
				       cpu_up_prepare_cb, cpu_dead_cb);
	if (rc >= 0) {
		rc = FUNC1(CPUHP_AP_ONLINE_DYN,
					       "x86/xen/guest:online",
					       xen_cpu_up_online, NULL);
		if (rc < 0)
			FUNC0(CPUHP_XEN_PREPARE);
	}

	return rc >= 0 ? 0 : rc;
}