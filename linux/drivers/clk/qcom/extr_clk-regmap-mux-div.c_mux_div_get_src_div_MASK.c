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
struct TYPE_2__ {int /*<<< orphan*/  regmap; int /*<<< orphan*/  hw; } ;
struct clk_regmap_mux_div {int src_shift; int hid_shift; int /*<<< orphan*/  hid_width; int /*<<< orphan*/  src_width; scalar_t__ reg_offset; TYPE_1__ clkr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CFG_RCGR ; 
 scalar_t__ CMD_RCGR ; 
 int CMD_RCGR_DIRTY_CFG ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*) ; 

__attribute__((used)) static void FUNC4(struct clk_regmap_mux_div *md, u32 *src,
				u32 *div)
{
	u32 val, d, s;
	const char *name = FUNC1(&md->clkr.hw);

	FUNC3(md->clkr.regmap, CMD_RCGR + md->reg_offset, &val);

	if (val & CMD_RCGR_DIRTY_CFG) {
		FUNC2("%s: RCG configuration is pending\n", name);
		return;
	}

	FUNC3(md->clkr.regmap, CFG_RCGR + md->reg_offset, &val);
	s = (val >> md->src_shift);
	s &= FUNC0(md->src_width) - 1;
	*src = s;

	d = (val >> md->hid_shift);
	d &= FUNC0(md->hid_width) - 1;
	*div = d;
}