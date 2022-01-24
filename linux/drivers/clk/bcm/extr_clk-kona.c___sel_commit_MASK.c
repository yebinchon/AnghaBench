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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_trig {int dummy; } ;
struct bcm_clk_sel {scalar_t__ clk_index; scalar_t__ parent_count; scalar_t__* parent_sel; int /*<<< orphan*/  offset; int /*<<< orphan*/  width; int /*<<< orphan*/  shift; } ;
struct bcm_clk_gate {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAD_CLK_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (struct ccu_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccu_data*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ccu_data*,struct bcm_clk_gate*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ccu_data*,struct bcm_clk_trig*) ; 
 int FUNC5 (struct ccu_data*,struct bcm_clk_gate*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (struct bcm_clk_sel*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct bcm_clk_sel*) ; 

__attribute__((used)) static int
FUNC10(struct ccu_data *ccu, struct bcm_clk_gate *gate,
			struct bcm_clk_sel *sel, struct bcm_clk_trig *trig)
{
	u32 parent_sel;
	u32 reg_val;
	bool enabled;
	int ret = 0;

	FUNC0(!FUNC9(sel));

	/*
	 * If we're just initializing the selector, and no initial
	 * state was defined in the device tree, we just find out
	 * what its current value is rather than updating it.
	 */
	if (sel->clk_index == BAD_CLK_INDEX) {
		u8 index;

		reg_val = FUNC1(ccu, sel->offset);
		parent_sel = FUNC6(reg_val, sel->shift, sel->width);
		index = FUNC8(sel, parent_sel);
		if (index == BAD_CLK_INDEX)
			return -EINVAL;
		sel->clk_index = index;

		return 0;
	}

	FUNC0((u32)sel->clk_index >= sel->parent_count);
	parent_sel = sel->parent_sel[sel->clk_index];

	/* Clock needs to be enabled before changing the parent */
	enabled = FUNC5(ccu, gate);
	if (!enabled && !FUNC3(ccu, gate, true))
		return -ENXIO;

	/* Replace the selector value and record the result */
	reg_val = FUNC1(ccu, sel->offset);
	reg_val = FUNC7(reg_val, sel->shift, sel->width, parent_sel);
	FUNC2(ccu, sel->offset, reg_val);

	/* If the trigger fails we still want to disable the gate */
	if (!FUNC4(ccu, trig))
		ret = -EIO;

	/* Disable the clock again if it was disabled to begin with */
	if (!enabled && !FUNC3(ccu, gate, false))
		ret = ret ? ret : -ENXIO;	/* return first error */

	return ret;
}