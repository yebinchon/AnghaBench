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
struct sunxi_rsb {scalar_t__ regs; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ RSB_DMCR ; 
 int RSB_DMCR_DEVICE_START ; 
 int RSB_DMCR_DEV_ADDR ; 
 int RSB_DMCR_MODE_DATA ; 
 int RSB_DMCR_MODE_REG ; 
 scalar_t__ RSB_INTS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct sunxi_rsb *rsb)
{
	int ret = 0;
	u32 reg;

	/* send init sequence */
	FUNC2(RSB_DMCR_DEVICE_START | RSB_DMCR_MODE_DATA |
	       RSB_DMCR_MODE_REG | RSB_DMCR_DEV_ADDR, rsb->regs + RSB_DMCR);

	FUNC1(rsb->regs + RSB_DMCR, reg,
			   !(reg & RSB_DMCR_DEVICE_START), 100, 250000);
	if (reg & RSB_DMCR_DEVICE_START)
		ret = -ETIMEDOUT;

	/* clear interrupt status bits */
	FUNC2(FUNC0(rsb->regs + RSB_INTS), rsb->regs + RSB_INTS);

	return ret;
}