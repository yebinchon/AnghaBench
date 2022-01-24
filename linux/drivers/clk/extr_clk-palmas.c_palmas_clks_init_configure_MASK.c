#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  clk; } ;
struct palmas_clock_info {TYPE_2__ hw; TYPE_1__* clk_desc; int /*<<< orphan*/  dev; scalar_t__ ext_control_pin; int /*<<< orphan*/  palmas; } ;
struct TYPE_3__ {int /*<<< orphan*/  clk_name; int /*<<< orphan*/  sleep_reqstr_id; int /*<<< orphan*/  control_reg; int /*<<< orphan*/  sleep_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  PALMAS_RESOURCE_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct palmas_clock_info *cinfo)
{
	int ret;

	ret = FUNC4(cinfo->palmas, PALMAS_RESOURCE_BASE,
				 cinfo->clk_desc->control_reg,
				 cinfo->clk_desc->sleep_mask, 0);
	if (ret < 0) {
		FUNC2(cinfo->dev, "Reg 0x%02x update failed, %d\n",
			cinfo->clk_desc->control_reg, ret);
		return ret;
	}

	if (cinfo->ext_control_pin) {
		ret = FUNC0(cinfo->hw.clk);
		if (ret < 0) {
			FUNC2(cinfo->dev, "Clock prep failed, %d\n", ret);
			return ret;
		}

		ret = FUNC3(cinfo->palmas,
					cinfo->clk_desc->sleep_reqstr_id,
					cinfo->ext_control_pin, true);
		if (ret < 0) {
			FUNC2(cinfo->dev, "Ext config for %s failed, %d\n",
				cinfo->clk_desc->clk_name, ret);
			FUNC1(cinfo->hw.clk);
			return ret;
		}
	}

	return ret;
}