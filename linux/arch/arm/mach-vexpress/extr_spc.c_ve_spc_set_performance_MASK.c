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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  sem; scalar_t__ cur_rsp_mask; scalar_t__ baseaddr; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int CA15_DVFS ; 
 int CA7_DVFS ; 
 int ETIME ; 
 scalar_t__ PERF_LVL_A15 ; 
 scalar_t__ PERF_LVL_A7 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  TIMEOUT_US ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,scalar_t__) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(int cluster, u32 freq)
{
	u32 perf_cfg_reg;
	int ret, perf, req_type;

	if (FUNC1(cluster)) {
		req_type = CA15_DVFS;
		perf_cfg_reg = PERF_LVL_A15;
	} else {
		req_type = CA7_DVFS;
		perf_cfg_reg = PERF_LVL_A7;
	}

	perf = FUNC6(cluster, freq);

	if (perf < 0)
		return perf;

	if (FUNC2(&info->sem, FUNC5(TIMEOUT_US)))
		return -ETIME;

	FUNC3(&info->done);
	info->cur_rsp_mask = FUNC0(req_type);

	FUNC8(perf, info->baseaddr + perf_cfg_reg);
	ret = FUNC7(req_type);

	info->cur_rsp_mask = 0;
	FUNC4(&info->sem);

	return ret;
}