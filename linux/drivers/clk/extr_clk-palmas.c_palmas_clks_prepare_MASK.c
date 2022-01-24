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
struct palmas_clock_info {TYPE_1__* clk_desc; int /*<<< orphan*/  dev; int /*<<< orphan*/  palmas; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ delay; int /*<<< orphan*/  control_reg; int /*<<< orphan*/  enable_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  PALMAS_RESOURCE_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct palmas_clock_info* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct palmas_clock_info *cinfo = FUNC2(hw);
	int ret;

	ret = FUNC1(cinfo->palmas, PALMAS_RESOURCE_BASE,
				 cinfo->clk_desc->control_reg,
				 cinfo->clk_desc->enable_mask,
				 cinfo->clk_desc->enable_mask);
	if (ret < 0)
		FUNC0(cinfo->dev, "Reg 0x%02x update failed, %d\n",
			cinfo->clk_desc->control_reg, ret);
	else if (cinfo->clk_desc->delay)
		FUNC3(cinfo->clk_desc->delay);

	return ret;
}