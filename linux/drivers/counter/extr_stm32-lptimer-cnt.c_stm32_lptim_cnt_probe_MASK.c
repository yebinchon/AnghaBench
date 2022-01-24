#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stm32_lptimer {scalar_t__ has_encoder; int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; } ;
struct TYPE_9__ {int num_signals; int num_counts; struct stm32_lptim_cnt* priv; int /*<<< orphan*/  signals; int /*<<< orphan*/ * counts; int /*<<< orphan*/ * ops; TYPE_2__* parent; void* name; } ;
struct stm32_lptim_cnt {TYPE_5__ counter; int /*<<< orphan*/  ceiling; int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; TYPE_2__* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/ * channels; int /*<<< orphan*/ * info; TYPE_1__ dev; void* name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct stm32_lptimer*) ; 
 int /*<<< orphan*/  STM32_LPTIM_MAX_ARR ; 
 struct stm32_lptimer* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,TYPE_5__*) ; 
 struct iio_dev* FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*,struct iio_dev*) ; 
 struct stm32_lptim_cnt* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct stm32_lptim_cnt*) ; 
 int /*<<< orphan*/  stm32_lptim_cnt_channels ; 
 int /*<<< orphan*/  stm32_lptim_cnt_iio_info ; 
 int /*<<< orphan*/  stm32_lptim_cnt_ops ; 
 int /*<<< orphan*/  stm32_lptim_cnt_signals ; 
 int /*<<< orphan*/  stm32_lptim_enc_channels ; 
 int /*<<< orphan*/  stm32_lptim_enc_counts ; 
 int /*<<< orphan*/  stm32_lptim_in1_counts ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct stm32_lptimer *ddata = FUNC2(pdev->dev.parent);
	struct stm32_lptim_cnt *priv;
	struct iio_dev *indio_dev;
	int ret;

	if (FUNC1(ddata))
		return -EINVAL;

	indio_dev = FUNC5(&pdev->dev, sizeof(*priv));
	if (!indio_dev)
		return -ENOMEM;

	priv = FUNC7(indio_dev);
	priv->dev = &pdev->dev;
	priv->regmap = ddata->regmap;
	priv->clk = ddata->clk;
	priv->ceiling = STM32_LPTIM_MAX_ARR;

	/* Initialize IIO device */
	indio_dev->name = FUNC3(&pdev->dev);
	indio_dev->dev.parent = &pdev->dev;
	indio_dev->dev.of_node = pdev->dev.of_node;
	indio_dev->info = &stm32_lptim_cnt_iio_info;
	if (ddata->has_encoder)
		indio_dev->channels = &stm32_lptim_enc_channels;
	else
		indio_dev->channels = &stm32_lptim_cnt_channels;
	indio_dev->num_channels = 1;

	/* Initialize Counter device */
	priv->counter.name = FUNC3(&pdev->dev);
	priv->counter.parent = &pdev->dev;
	priv->counter.ops = &stm32_lptim_cnt_ops;
	if (ddata->has_encoder) {
		priv->counter.counts = &stm32_lptim_enc_counts;
		priv->counter.num_signals = FUNC0(stm32_lptim_cnt_signals);
	} else {
		priv->counter.counts = &stm32_lptim_in1_counts;
		priv->counter.num_signals = 1;
	}
	priv->counter.num_counts = 1;
	priv->counter.signals = stm32_lptim_cnt_signals;
	priv->counter.priv = priv;

	FUNC8(pdev, priv);

	ret = FUNC6(&pdev->dev, indio_dev);
	if (ret)
		return ret;

	return FUNC4(&pdev->dev, &priv->counter);
}