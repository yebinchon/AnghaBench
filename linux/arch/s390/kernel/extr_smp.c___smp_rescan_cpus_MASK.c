#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sclp_core_info {int combined; int configured; TYPE_1__* core; } ;
struct pcpu {int address; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_4__ {scalar_t__ has_core_type; } ;
struct TYPE_3__ {scalar_t__ type; int core_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_STATE_CONFIGURED ; 
 int /*<<< orphan*/  CPU_STATE_STANDBY ; 
 int /*<<< orphan*/  POLARIZATION_UNKNOWN ; 
 scalar_t__ boot_core_type ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  cpu_present_mask ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 struct pcpu* pcpu_devices ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ sclp ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int smp_cpu_mt_shift ; 
 int smp_cpu_mtid ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sclp_core_info *info, int sysfs_add)
{
	struct pcpu *pcpu;
	cpumask_t avail;
	int cpu, nr, i, j;
	u16 address;

	nr = 0;
	FUNC2(&avail, cpu_possible_mask, cpu_present_mask);
	cpu = FUNC0(&avail);
	for (i = 0; (i < info->combined) && (cpu < nr_cpu_ids); i++) {
		if (sclp.has_core_type && info->core[i].type != boot_core_type)
			continue;
		address = info->core[i].core_id << smp_cpu_mt_shift;
		for (j = 0; j <= smp_cpu_mtid; j++) {
			if (FUNC3(cpu_present_mask, address + j))
				continue;
			pcpu = pcpu_devices + cpu;
			pcpu->address = address + j;
			pcpu->state =
				(cpu >= info->configured*(smp_cpu_mtid + 1)) ?
				CPU_STATE_STANDBY : CPU_STATE_CONFIGURED;
			FUNC6(cpu, POLARIZATION_UNKNOWN);
			FUNC4(cpu, true);
			if (sysfs_add && FUNC5(cpu) != 0)
				FUNC4(cpu, false);
			else
				nr++;
			cpu = FUNC1(cpu, &avail);
			if (cpu >= nr_cpu_ids)
				break;
		}
	}
	return nr;
}