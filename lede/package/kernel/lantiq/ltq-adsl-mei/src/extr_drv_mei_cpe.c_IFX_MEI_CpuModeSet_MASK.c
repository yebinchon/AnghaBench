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
typedef  int /*<<< orphan*/  DSL_DEV_MeiError_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;
typedef  int DSL_DEV_CpuMode_t ;

/* Variables and functions */
#define  DSL_CPU_HALT 130 
#define  DSL_CPU_RESET 129 
#define  DSL_CPU_RUN 128 
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static DSL_DEV_MeiError_t
FUNC3 (DSL_DEV_Device_t *pDev,
			  DSL_DEV_CpuMode_t mode)
{
	DSL_DEV_MeiError_t err_ret = DSL_DEV_MEI_ERR_FAILURE;
	switch (mode) {
	case DSL_CPU_HALT:
		err_ret = FUNC0 (pDev);
		break;
	case DSL_CPU_RUN:
		err_ret = FUNC2 (pDev);
		break;
	case DSL_CPU_RESET:
		err_ret = FUNC1 (pDev);
		break;
	default:
		break;
	}
	return err_ret;
}