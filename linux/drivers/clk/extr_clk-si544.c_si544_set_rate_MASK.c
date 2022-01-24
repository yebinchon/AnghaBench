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
struct clk_si544_muldiv {int /*<<< orphan*/  delta_m; } ;
struct clk_si544 {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SI544_CONTROL_MS_ICAL2 ; 
 unsigned int SI544_OE_STATE_ODC_OE ; 
 int /*<<< orphan*/  SI544_REG_CONTROL ; 
 int /*<<< orphan*/  SI544_REG_FCAL_OVR ; 
 int /*<<< orphan*/  SI544_REG_OE_STATE ; 
 long FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_si544*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct clk_si544_muldiv*) ; 
 int /*<<< orphan*/  FUNC5 (long,long) ; 
 int FUNC6 (struct clk_si544_muldiv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct clk_si544*,int) ; 
 int FUNC8 (struct clk_si544*,struct clk_si544_muldiv*) ; 
 long FUNC9 (unsigned long) ; 
 int FUNC10 (struct clk_si544*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct clk_si544*,struct clk_si544_muldiv*) ; 
 struct clk_si544* FUNC12 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate)
{
	struct clk_si544 *data = FUNC12(hw);
	struct clk_si544_muldiv settings;
	unsigned long center;
	long max_delta;
	long delta;
	unsigned int old_oe_state;
	int err;

	if (!FUNC1(data, rate))
		return -EINVAL;

	/* Try using the frequency adjustment feature for a <= 950ppm change */
	err = FUNC8(data, &settings);
	if (err)
		return err;

	center = FUNC4(&settings);
	max_delta = FUNC9(center);
	delta = rate - center;

	if (FUNC0(delta) <= max_delta)
		return FUNC10(data,
					 FUNC5(delta, max_delta));

	/* Too big for the delta adjustment, need to reprogram */
	err = FUNC6(&settings, rate);
	if (err)
		return err;

	err = FUNC2(data->regmap, SI544_REG_OE_STATE, &old_oe_state);
	if (err)
		return err;

	FUNC7(data, false);

	/* Allow FCAL for this frequency update */
	err = FUNC3(data->regmap, SI544_REG_FCAL_OVR, 0);
	if (err < 0)
		return err;

	err = FUNC10(data, settings.delta_m);
	if (err < 0)
		return err;

	err = FUNC11(data, &settings);
	if (err < 0)
		return err; /* Undefined state now, best to leave disabled */

	/* Trigger calibration */
	err = FUNC3(data->regmap, SI544_REG_CONTROL,
			   SI544_CONTROL_MS_ICAL2);
	if (err < 0)
		return err;

	/* Applying a new frequency can take up to 10ms */
	FUNC13(10000, 12000);

	if (old_oe_state & SI544_OE_STATE_ODC_OE)
		FUNC7(data, true);

	return err;
}