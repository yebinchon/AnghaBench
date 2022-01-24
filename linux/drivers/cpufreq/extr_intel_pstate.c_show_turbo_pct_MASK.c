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
typedef  int /*<<< orphan*/  uint32_t ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct TYPE_2__ {int turbo_pstate; int min_pstate; int max_pstate; } ;
struct cpudata {TYPE_1__ pstate; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct cpudata** all_cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  intel_pstate_driver ; 
 int /*<<< orphan*/  intel_pstate_driver_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct kobject *kobj,
				struct kobj_attribute *attr, char *buf)
{
	struct cpudata *cpu;
	int total, no_turbo, turbo_pct;
	uint32_t turbo_fp;

	FUNC4(&intel_pstate_driver_lock);

	if (!intel_pstate_driver) {
		FUNC5(&intel_pstate_driver_lock);
		return -EAGAIN;
	}

	cpu = all_cpu_data[0];

	total = cpu->pstate.turbo_pstate - cpu->pstate.min_pstate + 1;
	no_turbo = cpu->pstate.max_pstate - cpu->pstate.min_pstate + 1;
	turbo_fp = FUNC0(no_turbo, total);
	turbo_pct = 100 - FUNC1(FUNC3(turbo_fp, FUNC2(100)));

	FUNC5(&intel_pstate_driver_lock);

	return FUNC6(buf, "%u\n", turbo_pct);
}