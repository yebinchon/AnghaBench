#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int quality; int /*<<< orphan*/  read; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  function; } ;
struct timeriomem_rng_private {int present; int /*<<< orphan*/  io_base; TYPE_1__ rng_ops; int /*<<< orphan*/  completion; TYPE_2__ timer; int /*<<< orphan*/  period; } ;
struct timeriomem_rng_data {int period; int quality; } ;
struct resource {int start; } ;
struct TYPE_10__ {scalar_t__ of_node; struct timeriomem_rng_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NSEC_PER_USEC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct resource*) ; 
 struct timeriomem_rng_private* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int*) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct timeriomem_rng_private*) ; 
 int FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  timeriomem_rng_read ; 
 int /*<<< orphan*/  timeriomem_rng_trigger ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct timeriomem_rng_data *pdata = pdev->dev.platform_data;
	struct timeriomem_rng_private *priv;
	struct resource *res;
	int err = 0;
	int period;

	if (!pdev->dev.of_node && !pdata) {
		FUNC3(&pdev->dev, "timeriomem_rng_data is missing\n");
		return -EINVAL;
	}

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENXIO;

	if (res->start % 4 != 0 || FUNC15(res) < 4) {
		FUNC3(&pdev->dev,
			"address must be at least four bytes wide and 32-bit aligned\n");
		return -EINVAL;
	}

	/* Allocate memory for the device structure (and zero it) */
	priv = FUNC7(&pdev->dev,
			sizeof(struct timeriomem_rng_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC14(pdev, priv);

	if (pdev->dev.of_node) {
		int i;

		if (!FUNC12(pdev->dev.of_node,
						"period", &i))
			period = i;
		else {
			FUNC3(&pdev->dev, "missing period\n");
			return -EINVAL;
		}

		if (!FUNC12(pdev->dev.of_node,
						"quality", &i))
			priv->rng_ops.quality = i;
		else
			priv->rng_ops.quality = 0;
	} else {
		period = pdata->period;
		priv->rng_ops.quality = pdata->quality;
	}

	priv->period = FUNC11(period * NSEC_PER_USEC);
	FUNC10(&priv->completion);
	FUNC8(&priv->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	priv->timer.function = timeriomem_rng_trigger;

	priv->rng_ops.name = FUNC5(&pdev->dev);
	priv->rng_ops.read = timeriomem_rng_read;

	priv->io_base = FUNC6(&pdev->dev, res);
	if (FUNC0(priv->io_base)) {
		return FUNC1(priv->io_base);
	}

	/* Assume random data is already available. */
	priv->present = 1;
	FUNC2(&priv->completion);

	err = FUNC9(&priv->rng_ops);
	if (err) {
		FUNC3(&pdev->dev, "problem registering\n");
		return err;
	}

	FUNC4(&pdev->dev, "32bits from 0x%p @ %dus\n",
			priv->io_base, period);

	return 0;
}