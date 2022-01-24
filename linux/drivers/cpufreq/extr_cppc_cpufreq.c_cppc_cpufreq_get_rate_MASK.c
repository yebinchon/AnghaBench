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
struct cppc_perf_fb_ctrs {int /*<<< orphan*/  member_0; } ;
struct cppc_cpudata {int dummy; } ;

/* Variables and functions */
 struct cppc_cpudata** all_cpu_data ; 
 scalar_t__ apply_hisi_workaround ; 
 int FUNC0 (unsigned int,struct cppc_perf_fb_ctrs*) ; 
 unsigned int FUNC1 (struct cppc_cpudata*,struct cppc_perf_fb_ctrs,struct cppc_perf_fb_ctrs) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static unsigned int FUNC4(unsigned int cpunum)
{
	struct cppc_perf_fb_ctrs fb_ctrs_t0 = {0}, fb_ctrs_t1 = {0};
	struct cppc_cpudata *cpu = all_cpu_data[cpunum];
	int ret;

	if (apply_hisi_workaround)
		return FUNC2(cpunum);

	ret = FUNC0(cpunum, &fb_ctrs_t0);
	if (ret)
		return ret;

	FUNC3(2); /* 2usec delay between sampling */

	ret = FUNC0(cpunum, &fb_ctrs_t1);
	if (ret)
		return ret;

	return FUNC1(cpu, fb_ctrs_t0, fb_ctrs_t1);
}