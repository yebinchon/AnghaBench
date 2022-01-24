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
struct clk_si514_muldiv {int dummy; } ;
struct clk_si514 {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI514_CONTROL_FCAL ; 
 unsigned int SI514_CONTROL_OE ; 
 int /*<<< orphan*/  SI514_REG_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk_si514_muldiv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_si514*,int) ; 
 int FUNC4 (struct clk_si514*,struct clk_si514_muldiv*) ; 
 struct clk_si514* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate)
{
	struct clk_si514 *data = FUNC5(hw);
	struct clk_si514_muldiv settings;
	unsigned int old_oe_state;
	int err;

	err = FUNC2(&settings, rate);
	if (err)
		return err;

	err = FUNC0(data->regmap, SI514_REG_CONTROL, &old_oe_state);
	if (err)
		return err;

	FUNC3(data, false);

	err = FUNC4(data, &settings);
	if (err < 0)
		return err; /* Undefined state now, best to leave disabled */

	/* Trigger calibration */
	err = FUNC1(data->regmap, SI514_REG_CONTROL, SI514_CONTROL_FCAL);
	if (err < 0)
		return err;

	/* Applying a new frequency can take up to 10ms */
	FUNC6(10000, 12000);

	if (old_oe_state & SI514_CONTROL_OE)
		FUNC3(data, true);

	return err;
}