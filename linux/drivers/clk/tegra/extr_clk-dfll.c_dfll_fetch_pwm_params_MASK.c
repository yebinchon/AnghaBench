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
typedef  int u32 ;
struct tegra_dfll {int reg_init_uV; int pwm_rate; void* pwm_disable_state; int /*<<< orphan*/  dev; void* pwm_pin; void* pwm_enable_state; TYPE_2__* soc; scalar_t__* lut_uv; } ;
struct TYPE_3__ {int step_uv; scalar_t__ offset_uv; } ;
struct TYPE_4__ {TYPE_1__ alignment; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int MAX_DFLL_VOLTAGES ; 
 int NSEC_PER_SEC ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,char*) ; 
 int FUNC5 (struct tegra_dfll*,char*,int*) ; 

__attribute__((used)) static int FUNC6(struct tegra_dfll *td)
{
	int ret, i;
	u32 pwm_period;

	if (!td->soc->alignment.step_uv || !td->soc->alignment.offset_uv) {
		FUNC2(td->dev,
			"Missing step or alignment info for PWM regulator");
		return -EINVAL;
	}
	for (i = 0; i < MAX_DFLL_VOLTAGES; i++)
		td->lut_uv[i] = td->soc->alignment.offset_uv +
				i * td->soc->alignment.step_uv;

	ret = FUNC5(td, "nvidia,pwm-tristate-microvolts",
			    &td->reg_init_uV);
	if (!ret) {
		FUNC2(td->dev, "couldn't get initialized voltage\n");
		return ret;
	}

	ret = FUNC5(td, "nvidia,pwm-period-nanoseconds", &pwm_period);
	if (!ret) {
		FUNC2(td->dev, "couldn't get PWM period\n");
		return ret;
	}
	td->pwm_rate = (NSEC_PER_SEC / pwm_period) * (MAX_DFLL_VOLTAGES - 1);

	td->pwm_pin = FUNC3(td->dev);
	if (FUNC0(td->pwm_pin)) {
		FUNC2(td->dev, "DT: missing pinctrl device\n");
		return FUNC1(td->pwm_pin);
	}

	td->pwm_enable_state = FUNC4(td->pwm_pin,
						    "dvfs_pwm_enable");
	if (FUNC0(td->pwm_enable_state)) {
		FUNC2(td->dev, "DT: missing pwm enabled state\n");
		return FUNC1(td->pwm_enable_state);
	}

	td->pwm_disable_state = FUNC4(td->pwm_pin,
						     "dvfs_pwm_disable");
	if (FUNC0(td->pwm_disable_state)) {
		FUNC2(td->dev, "DT: missing pwm disabled state\n");
		return FUNC1(td->pwm_disable_state);
	}

	return 0;
}