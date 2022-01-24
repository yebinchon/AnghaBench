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
struct stm32_timers {int /*<<< orphan*/  max_arr; int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int num_counts; struct stm32_timer_cnt* priv; int /*<<< orphan*/  num_signals; int /*<<< orphan*/  signals; int /*<<< orphan*/ * counts; int /*<<< orphan*/ * ops; struct device* parent; int /*<<< orphan*/  name; } ;
struct stm32_timer_cnt {TYPE_1__ counter; int /*<<< orphan*/  ceiling; int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct stm32_timers*) ; 
 struct stm32_timers* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 struct stm32_timer_cnt* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stm32_counts ; 
 int /*<<< orphan*/  stm32_signals ; 
 int /*<<< orphan*/  stm32_timer_cnt_ops ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct stm32_timers *ddata = FUNC2(pdev->dev.parent);
	struct device *dev = &pdev->dev;
	struct stm32_timer_cnt *priv;

	if (FUNC1(ddata))
		return -EINVAL;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->regmap = ddata->regmap;
	priv->clk = ddata->clk;
	priv->ceiling = ddata->max_arr;

	priv->counter.name = FUNC3(dev);
	priv->counter.parent = dev;
	priv->counter.ops = &stm32_timer_cnt_ops;
	priv->counter.counts = &stm32_counts;
	priv->counter.num_counts = 1;
	priv->counter.signals = stm32_signals;
	priv->counter.num_signals = FUNC0(stm32_signals);
	priv->counter.priv = priv;

	/* Register Counter device */
	return FUNC4(dev, &priv->counter);
}