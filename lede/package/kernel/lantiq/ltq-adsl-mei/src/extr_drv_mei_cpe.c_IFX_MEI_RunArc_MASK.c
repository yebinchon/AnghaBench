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
typedef  int u32 ;
typedef  int /*<<< orphan*/  DSL_DEV_MeiError_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 int ARC_AUX_HALT ; 
 int /*<<< orphan*/  AUX_STATUS ; 
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JTAG_MASTER_MODE ; 
 int /*<<< orphan*/  MEI_DEBUG_DEC_AUX_MASK ; 
 int /*<<< orphan*/  MEI_MASTER_MODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static DSL_DEV_MeiError_t
FUNC4 (DSL_DEV_Device_t * pDev)
{
	u32 arc_debug_data = 0x0;

	//      Switch arc control from JTAG mode to MEI mode- write '1' to bit0
	FUNC0 (pDev, MEI_MASTER_MODE);
	FUNC2 (pDev, MEI_DEBUG_DEC_AUX_MASK,
					AUX_STATUS, &arc_debug_data);

	//      Write debug data reg with content ANDd with 0xFDFFFFFF (halt bit cleared)
	arc_debug_data &= ~ARC_AUX_HALT;
	FUNC3 (pDev, MEI_DEBUG_DEC_AUX_MASK,
					 AUX_STATUS, arc_debug_data);

	//      Switch arc control from MEI mode to JTAG mode- write '0' to bit0
	FUNC0 (pDev, JTAG_MASTER_MODE);
	//      Enable mask for arc codeswap interrupts
	FUNC1 (pDev);

	return DSL_DEV_MEI_ERR_SUCCESS;

}