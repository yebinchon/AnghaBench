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
struct TYPE_2__ {int /*<<< orphan*/  sem; scalar_t__ cur_rsp_mask; scalar_t__ baseaddr; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 scalar_t__ COMMS ; 
 int ETIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPC_SYS_CFG ; 
 scalar_t__ SYSCFG_RDATA ; 
 int SYSCFG_START ; 
 int /*<<< orphan*/  TIMEOUT_US ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(int func, int offset, uint32_t *data)
{
	int ret;

	if (FUNC1(&info->sem, FUNC5(TIMEOUT_US)))
		return -ETIME;

	FUNC2(&info->done);
	info->cur_rsp_mask = FUNC0(SPC_SYS_CFG);

	/* Set the control value */
	FUNC7(SYSCFG_START | func | offset >> 2, info->baseaddr + COMMS);
	ret = FUNC6(SPC_SYS_CFG);

	if (ret == 0)
		*data = FUNC3(info->baseaddr + SYSCFG_RDATA);

	info->cur_rsp_mask = 0;
	FUNC4(&info->sem);

	return ret;
}