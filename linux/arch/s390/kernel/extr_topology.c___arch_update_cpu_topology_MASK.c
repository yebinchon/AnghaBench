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
struct sysinfo_15_1_x {int dummy; } ;

/* Variables and functions */
 scalar_t__ MACHINE_HAS_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpus_with_topology ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smp_cpu_state_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct sysinfo_15_1_x*) ; 
 struct sysinfo_15_1_x* tl_info ; 
 int /*<<< orphan*/  FUNC4 (struct sysinfo_15_1_x*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(void)
{
	struct sysinfo_15_1_x *info = tl_info;
	int rc = 0;

	FUNC1(&smp_cpu_state_mutex);
	FUNC0(&cpus_with_topology);
	if (MACHINE_HAS_TOPOLOGY) {
		rc = 1;
		FUNC3(info);
		FUNC4(info);
	}
	FUNC6();
	if (!MACHINE_HAS_TOPOLOGY)
		FUNC5();
	FUNC2(&smp_cpu_state_mutex);
	return rc;
}