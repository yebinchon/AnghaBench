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
struct axi_clkgen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXI_CLKGEN_V2_REG_RESET ; 
 unsigned int AXI_CLKGEN_V2_RESET_ENABLE ; 
 unsigned int AXI_CLKGEN_V2_RESET_MMCM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct axi_clkgen*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct axi_clkgen *axi_clkgen,
	bool enable)
{
	unsigned int val = AXI_CLKGEN_V2_RESET_ENABLE;

	if (enable)
		val |= AXI_CLKGEN_V2_RESET_MMCM_ENABLE;

	FUNC0(axi_clkgen, AXI_CLKGEN_V2_REG_RESET, val);
}