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

/* Variables and functions */
 int CPU0_DBG_SRST_REQ_EN ; 
 int CPU0_HPM_SRST_REQ_EN ; 
 int CPU0_NEON_SRST_REQ_EN ; 
 int CPU0_SRST_REQ_EN ; 
 int CPU0_WFI_MASK_CFG ; 
 int CPU2_ISO_CTRL ; 
 scalar_t__ SCCPUCOREDIS ; 
 scalar_t__ SCCPUCOREEN ; 
 scalar_t__ SCCPURSTDIS ; 
 scalar_t__ SCCPURSTEN ; 
 scalar_t__ SCISODIS ; 
 scalar_t__ SCISOEN ; 
 scalar_t__ SCPERCTRL0 ; 
 scalar_t__ SCPERPWRDIS ; 
 scalar_t__ SCPERPWREN ; 
 scalar_t__ ctrl_base ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(int cpu, bool enable)
{
	u32 val = 0;

	if (enable) {
		/* MTCMOS set */
		if ((cpu == 2) || (cpu == 3))
			FUNC2(CPU2_ISO_CTRL << (cpu - 2),
				       ctrl_base + SCPERPWREN);
		FUNC1(100);

		/* Enable core */
		FUNC2(0x01 << cpu, ctrl_base + SCCPUCOREEN);

		/* unreset */
		val = CPU0_DBG_SRST_REQ_EN | CPU0_NEON_SRST_REQ_EN
			| CPU0_SRST_REQ_EN;
		FUNC2(val << cpu, ctrl_base + SCCPURSTDIS);
		/* reset */
		val |= CPU0_HPM_SRST_REQ_EN;
		FUNC2(val << cpu, ctrl_base + SCCPURSTEN);

		/* ISO disable */
		if ((cpu == 2) || (cpu == 3))
			FUNC2(CPU2_ISO_CTRL << (cpu - 2),
				       ctrl_base + SCISODIS);
		FUNC1(1);

		/* WFI Mask */
		val = FUNC0(ctrl_base + SCPERCTRL0);
		val &= ~(CPU0_WFI_MASK_CFG << cpu);
		FUNC2(val, ctrl_base + SCPERCTRL0);

		/* Unreset */
		val = CPU0_DBG_SRST_REQ_EN | CPU0_NEON_SRST_REQ_EN
			| CPU0_SRST_REQ_EN | CPU0_HPM_SRST_REQ_EN;
		FUNC2(val << cpu, ctrl_base + SCCPURSTDIS);
	} else {
		/* wfi mask */
		val = FUNC0(ctrl_base + SCPERCTRL0);
		val |= (CPU0_WFI_MASK_CFG << cpu);
		FUNC2(val, ctrl_base + SCPERCTRL0);

		/* disable core*/
		FUNC2(0x01 << cpu, ctrl_base + SCCPUCOREDIS);

		if ((cpu == 2) || (cpu == 3)) {
			/* iso enable */
			FUNC2(CPU2_ISO_CTRL << (cpu - 2),
				       ctrl_base + SCISOEN);
			FUNC1(1);
		}

		/* reset */
		val = CPU0_DBG_SRST_REQ_EN | CPU0_NEON_SRST_REQ_EN
			| CPU0_SRST_REQ_EN | CPU0_HPM_SRST_REQ_EN;
		FUNC2(val << cpu, ctrl_base + SCCPURSTEN);

		if ((cpu == 2) || (cpu == 3)) {
			/* MTCMOS unset */
			FUNC2(CPU2_ISO_CTRL << (cpu - 2),
				       ctrl_base + SCPERPWRDIS);
			FUNC1(100);
		}
	}
}