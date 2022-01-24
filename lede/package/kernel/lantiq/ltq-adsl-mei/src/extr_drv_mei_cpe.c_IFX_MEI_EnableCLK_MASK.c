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
 int /*<<< orphan*/  ACL_CLK_MODE_ENABLE ; 
 int /*<<< orphan*/  CRI_CCR0 ; 
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JTAG_MASTER_MODE ; 
 int /*<<< orphan*/  MEI_MASTER_MODE ; 
 int /*<<< orphan*/  ME_DBG_DECODE_DMP1_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DSL_DEV_MeiError_t
FUNC3 (DSL_DEV_Device_t * pDev)
{
	u32 arc_debug_data = 0;
	FUNC0 (pDev, MEI_MASTER_MODE);
	//enable ac_clk signal
	FUNC1 (pDev, ME_DBG_DECODE_DMP1_MASK,
					CRI_CCR0, &arc_debug_data);
	arc_debug_data |= ACL_CLK_MODE_ENABLE;
	FUNC2 (pDev, ME_DBG_DECODE_DMP1_MASK,
					 CRI_CCR0, arc_debug_data);
	FUNC0 (pDev, JTAG_MASTER_MODE);
	return DSL_DEV_MEI_ERR_SUCCESS;
}