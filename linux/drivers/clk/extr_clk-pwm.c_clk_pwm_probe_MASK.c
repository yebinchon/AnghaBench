#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pwm_device {int dummy; } ;
struct pwm_args {int period; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {char* name; } ;
struct TYPE_7__ {struct clk_init_data* init; } ;
struct clk_pwm {int fixed_rate; TYPE_1__ hw; struct pwm_device* pwm; } ;
struct clk_init_data {char const* name; scalar_t__ num_parents; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct pwm_device*) ; 
 int NSEC_PER_SEC ; 
 int FUNC2 (struct pwm_device*) ; 
 int /*<<< orphan*/  clk_pwm_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 struct clk_pwm* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct pwm_device* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device_node*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*,char const**) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct pwm_device*) ; 
 int FUNC11 (struct pwm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pwm_device*,struct pwm_args*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct clk_init_data init;
	struct clk_pwm *clk_pwm;
	struct pwm_device *pwm;
	struct pwm_args pargs;
	const char *clk_name;
	int ret;

	clk_pwm = FUNC5(&pdev->dev, sizeof(*clk_pwm), GFP_KERNEL);
	if (!clk_pwm)
		return -ENOMEM;

	pwm = FUNC6(&pdev->dev, NULL);
	if (FUNC1(pwm))
		return FUNC2(pwm);

	FUNC12(pwm, &pargs);
	if (!pargs.period) {
		FUNC3(&pdev->dev, "invalid PWM period\n");
		return -EINVAL;
	}

	if (FUNC9(node, "clock-frequency", &clk_pwm->fixed_rate))
		clk_pwm->fixed_rate = NSEC_PER_SEC / pargs.period;

	if (pargs.period != NSEC_PER_SEC / clk_pwm->fixed_rate &&
	    pargs.period != FUNC0(NSEC_PER_SEC, clk_pwm->fixed_rate)) {
		FUNC3(&pdev->dev,
			"clock-frequency does not match PWM period\n");
		return -EINVAL;
	}

	/*
	 * FIXME: pwm_apply_args() should be removed when switching to the
	 * atomic PWM API.
	 */
	FUNC10(pwm);
	ret = FUNC11(pwm, (pargs.period + 1) >> 1, pargs.period);
	if (ret < 0)
		return ret;

	clk_name = node->name;
	FUNC8(node, "clock-output-names", &clk_name);

	init.name = clk_name;
	init.ops = &clk_pwm_ops;
	init.flags = 0;
	init.num_parents = 0;

	clk_pwm->pwm = pwm;
	clk_pwm->hw.init = &init;
	ret = FUNC4(&pdev->dev, &clk_pwm->hw);
	if (ret)
		return ret;

	return FUNC7(node, of_clk_hw_simple_get, &clk_pwm->hw);
}