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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  read; int /*<<< orphan*/  name; } ;
struct meson_rng_data {TYPE_1__ rng; int /*<<< orphan*/ * core_clk; int /*<<< orphan*/ * base; struct platform_device* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,struct resource*) ; 
 struct meson_rng_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  meson_rng_clk_disable ; 
 int /*<<< orphan*/  meson_rng_read ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct meson_rng_data*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct meson_rng_data *data;
	struct resource *res;
	int ret;

	data = FUNC7(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->pdev = pdev;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	data->base = FUNC6(dev, res);
	if (FUNC0(data->base))
		return FUNC1(data->base);

	data->core_clk = FUNC4(dev, "core");
	if (FUNC0(data->core_clk))
		data->core_clk = NULL;

	if (data->core_clk) {
		ret = FUNC2(data->core_clk);
		if (ret)
			return ret;
		ret = FUNC3(dev, meson_rng_clk_disable,
					       data->core_clk);
		if (ret)
			return ret;
	}

	data->rng.name = pdev->name;
	data->rng.read = meson_rng_read;

	FUNC9(pdev, data);

	return FUNC5(dev, &data->rng);
}