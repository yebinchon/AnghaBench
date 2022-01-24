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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ modem_ready; } ;
typedef  int /*<<< orphan*/  DSL_DEV_MeiError_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 scalar_t__ BSP_PPE32_SRST ; 
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_SUCCESS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ LTQ_RCU_RST ; 
 int LTQ_RCU_RST_REQ_AFE ; 
 int LTQ_RCU_RST_REQ_DFE ; 
 int /*<<< orphan*/  MEI_SOFT_RESET ; 
 scalar_t__ ME_RST_CTRL ; 

__attribute__((used)) static DSL_DEV_MeiError_t
FUNC7 (DSL_DEV_Device_t * pDev)
{
	u32 arc_debug_data = 0;

	FUNC2 (pDev);

	FUNC4 ((u32) LTQ_RCU_RST, &arc_debug_data);
	FUNC5 ((u32) LTQ_RCU_RST,
		arc_debug_data | LTQ_RCU_RST_REQ_DFE | LTQ_RCU_RST_REQ_AFE);

	// reset ARC
	FUNC6 (pDev, (u32) ME_RST_CTRL, MEI_SOFT_RESET);
	FUNC6 (pDev, (u32) ME_RST_CTRL, 0);

	FUNC3 (pDev);

	FUNC1 (pDev);

#if 0
	// reset part of PPE
	*(unsigned long *) (BSP_PPE32_SRST) = 0xC30;
	*(unsigned long *) (BSP_PPE32_SRST) = 0xFFF;
#endif

	FUNC0(pDev)->modem_ready = 0;

	return DSL_DEV_MEI_ERR_SUCCESS;
}