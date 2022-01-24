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
struct ts_nbus {struct pwm_device* pwm; int /*<<< orphan*/  lock; } ;
struct pwm_device {int dummy; } ;
struct pwm_args {int /*<<< orphan*/  period; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct pwm_device*) ; 
 int FUNC1 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct ts_nbus*) ; 
 struct ts_nbus* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct pwm_device* FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct pwm_device*) ; 
 int FUNC10 (struct pwm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct pwm_device*,struct pwm_args*) ; 
 int FUNC13 (struct platform_device*,struct ts_nbus*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct pwm_device *pwm;
	struct pwm_args pargs;
	struct device *dev = &pdev->dev;
	struct ts_nbus *ts_nbus;
	int ret;

	ts_nbus = FUNC5(dev, sizeof(*ts_nbus), GFP_KERNEL);
	if (!ts_nbus)
		return -ENOMEM;

	FUNC7(&ts_nbus->lock);

	ret = FUNC13(pdev, ts_nbus);
	if (ret < 0)
		return ret;

	pwm = FUNC6(dev, NULL);
	if (FUNC0(pwm)) {
		ret = FUNC1(pwm);
		if (ret != -EPROBE_DEFER)
			FUNC2(dev, "unable to request PWM\n");
		return ret;
	}

	FUNC12(pwm, &pargs);
	if (!pargs.period) {
		FUNC2(&pdev->dev, "invalid PWM period\n");
		return -EINVAL;
	}

	/*
	 * FIXME: pwm_apply_args() should be removed when switching to
	 * the atomic PWM API.
	 */
	FUNC9(pwm);
	ret = FUNC10(pwm, pargs.period, pargs.period);
	if (ret < 0)
		return ret;

	/*
	 * we can now start the FPGA and populate the peripherals.
	 */
	FUNC11(pwm);
	ts_nbus->pwm = pwm;

	/*
	 * let the child nodes retrieve this instance of the ts-nbus.
	 */
	FUNC4(dev, ts_nbus);

	ret = FUNC8(dev->of_node, NULL, NULL, dev);
	if (ret < 0)
		return ret;

	FUNC3(dev, "initialized\n");

	return 0;
}