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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  DSL_DEV_MeiError_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ME_DBG_DATA ; 
 scalar_t__ ME_DBG_DECODE ; 
 scalar_t__ ME_DBG_RD_AD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static DSL_DEV_MeiError_t
FUNC3 (DSL_DEV_Device_t * pDev, u32 DEC_mode,
				u32 address, u32 * data)
{
	FUNC1 (pDev, (u32) ME_DBG_DECODE, DEC_mode);
	FUNC1 (pDev, (u32) ME_DBG_RD_AD, address);
	FUNC2 (pDev);
	FUNC0 (pDev, (u32) ME_DBG_DATA, data);
	return DSL_DEV_MEI_ERR_SUCCESS;
}