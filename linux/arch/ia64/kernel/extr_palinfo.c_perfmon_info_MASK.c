#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct seq_file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  retired; int /*<<< orphan*/  cycles; int /*<<< orphan*/  width; int /*<<< orphan*/  generic; } ;
struct TYPE_5__ {TYPE_1__ pal_perf_mon_info_s; } ;
typedef  TYPE_2__ pal_perf_mon_info_u_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int*,int) ; 
 scalar_t__ FUNC1 (int*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m)
{
	u64 pm_buffer[16];
	pal_perf_mon_info_u_t pm_info;

	if (FUNC1(pm_buffer, &pm_info) != 0)
		return 0;

	FUNC2(m,
		   "PMC/PMD pairs                 : %d\n"
		   "Counter width                 : %d bits\n"
		   "Cycle event number            : %d\n"
		   "Retired event number          : %d\n"
		   "Implemented PMC               : ",
		   pm_info.pal_perf_mon_info_s.generic,
		   pm_info.pal_perf_mon_info_s.width,
		   pm_info.pal_perf_mon_info_s.cycles,
		   pm_info.pal_perf_mon_info_s.retired);

	FUNC0(m, pm_buffer, 256);
	FUNC4(m, "\nImplemented PMD               : ");
	FUNC0(m, pm_buffer+4, 256);
	FUNC4(m, "\nCycles count capable          : ");
	FUNC0(m, pm_buffer+8, 256);
	FUNC4(m, "\nRetired bundles count capable : ");

#ifdef CONFIG_ITANIUM
	/*
	 * PAL_PERF_MON_INFO reports that only PMC4 can be used to count CPU_CYCLES
	 * which is wrong, both PMC4 and PMD5 support it.
	 */
	if (pm_buffer[12] == 0x10)
		pm_buffer[12]=0x30;
#endif

	FUNC0(m, pm_buffer+12, 256);
	FUNC3(m, '\n');
	return 0;
}