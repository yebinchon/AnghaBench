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
typedef  int /*<<< orphan*/  u64 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_FSL_EMB_PERF_EVENT ; 
 int /*<<< orphan*/  CONFIG_PPC32 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PERF_REG_POWERPC_MAX ; 
 int PERF_REG_POWERPC_MMCRA ; 
 int PERF_REG_POWERPC_SIER ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * pt_regs_offset ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ ) ; 

u64 FUNC4(struct pt_regs *regs, int idx)
{
	if (FUNC1(idx >= PERF_REG_POWERPC_MAX))
		return 0;

	if (idx == PERF_REG_POWERPC_SIER &&
	   (FUNC0(CONFIG_FSL_EMB_PERF_EVENT) ||
	    FUNC0(CONFIG_PPC32) ||
	    !FUNC2()))
		return 0;

	if (idx == PERF_REG_POWERPC_MMCRA &&
	   (FUNC0(CONFIG_FSL_EMB_PERF_EVENT) ||
	    FUNC0(CONFIG_PPC32)))
		return 0;

	return FUNC3(regs, pt_regs_offset[idx]);
}