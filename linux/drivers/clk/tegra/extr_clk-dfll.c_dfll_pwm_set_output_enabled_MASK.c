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
struct tegra_dfll {int /*<<< orphan*/  dev; int /*<<< orphan*/  pwm_disable_state; int /*<<< orphan*/  pwm_pin; int /*<<< orphan*/  pwm_rate; int /*<<< orphan*/  ref_rate; int /*<<< orphan*/  pwm_enable_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFLL_OUTPUT_CFG ; 
 int DFLL_OUTPUT_CFG_PWM_DIV_MASK ; 
 int DFLL_OUTPUT_CFG_PWM_DIV_SHIFT ; 
 int DFLL_OUTPUT_CFG_PWM_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct tegra_dfll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dfll*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct tegra_dfll *td, bool enable)
{
	int ret;
	u32 val, div;

	if (enable) {
		ret = FUNC6(td->pwm_pin, td->pwm_enable_state);
		if (ret < 0) {
			FUNC1(td->dev, "setting enable state failed\n");
			return -EINVAL;
		}
		val = FUNC3(td, DFLL_OUTPUT_CFG);
		val &= ~DFLL_OUTPUT_CFG_PWM_DIV_MASK;
		div = FUNC0(td->ref_rate, td->pwm_rate);
		val |= (div << DFLL_OUTPUT_CFG_PWM_DIV_SHIFT)
				& DFLL_OUTPUT_CFG_PWM_DIV_MASK;
		FUNC5(td, val, DFLL_OUTPUT_CFG);
		FUNC4(td);

		val |= DFLL_OUTPUT_CFG_PWM_ENABLE;
		FUNC5(td, val, DFLL_OUTPUT_CFG);
		FUNC4(td);
	} else {
		ret = FUNC6(td->pwm_pin, td->pwm_disable_state);
		if (ret < 0)
			FUNC2(td->dev, "setting disable state failed\n");

		val = FUNC3(td, DFLL_OUTPUT_CFG);
		val &= ~DFLL_OUTPUT_CFG_PWM_ENABLE;
		FUNC5(td, val, DFLL_OUTPUT_CFG);
		FUNC4(td);
	}

	return 0;
}