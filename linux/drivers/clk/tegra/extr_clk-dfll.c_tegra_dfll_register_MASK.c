#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tegra_dfll_soc_data {int dummy; } ;
struct tegra_dfll {TYPE_1__* dev; void* lut_base; void* i2c_controller_base; void* i2c_base; void* base; int /*<<< orphan*/  pmu_if; int /*<<< orphan*/  vdd_reg; int /*<<< orphan*/  dvco_rst; struct tegra_dfll_soc_data* soc; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEGRA_DFLL_PMU_I2C ; 
 int /*<<< orphan*/  TEGRA_DFLL_PMU_PWM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 void* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_dfll* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_dfll*) ; 
 int FUNC9 (struct tegra_dfll*) ; 
 int FUNC10 (struct tegra_dfll*) ; 
 int FUNC11 (struct tegra_dfll*) ; 
 int FUNC12 (struct tegra_dfll*) ; 
 int FUNC13 (struct tegra_dfll*) ; 
 int FUNC14 (struct tegra_dfll*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC18 (struct resource*) ; 

int FUNC19(struct platform_device *pdev,
			struct tegra_dfll_soc_data *soc)
{
	struct resource *mem;
	struct tegra_dfll *td;
	int ret;

	if (!soc) {
		FUNC2(&pdev->dev, "no tegra_dfll_soc_data provided\n");
		return -EINVAL;
	}

	td = FUNC4(&pdev->dev, sizeof(*td), GFP_KERNEL);
	if (!td)
		return -ENOMEM;
	td->dev = &pdev->dev;
	FUNC17(pdev, td);

	td->soc = soc;

	td->dvco_rst = FUNC6(td->dev, "dvco");
	if (FUNC0(td->dvco_rst)) {
		FUNC2(td->dev, "couldn't get dvco reset\n");
		return FUNC1(td->dvco_rst);
	}

	ret = FUNC9(td);
	if (ret) {
		FUNC2(td->dev, "couldn't parse device tree parameters\n");
		return ret;
	}

	if (FUNC15(td->dev->of_node, "nvidia,pwm-to-pmic")) {
		td->pmu_if = TEGRA_DFLL_PMU_PWM;
		ret = FUNC11(td);
	} else  {
		td->vdd_reg = FUNC5(td->dev, "vdd-cpu");
		if (FUNC0(td->vdd_reg)) {
			FUNC2(td->dev, "couldn't get vdd_cpu regulator\n");
			return FUNC1(td->vdd_reg);
		}
		td->pmu_if = TEGRA_DFLL_PMU_I2C;
		ret = FUNC10(td);
	}
	if (ret)
		return ret;

	ret = FUNC7(td);
	if (ret) {
		FUNC2(td->dev, "couldn't build LUT\n");
		return ret;
	}

	mem = FUNC16(pdev, IORESOURCE_MEM, 0);
	if (!mem) {
		FUNC2(td->dev, "no control register resource\n");
		return -ENODEV;
	}

	td->base = FUNC3(td->dev, mem->start, FUNC18(mem));
	if (!td->base) {
		FUNC2(td->dev, "couldn't ioremap DFLL control registers\n");
		return -ENODEV;
	}

	mem = FUNC16(pdev, IORESOURCE_MEM, 1);
	if (!mem) {
		FUNC2(td->dev, "no i2c_base resource\n");
		return -ENODEV;
	}

	td->i2c_base = FUNC3(td->dev, mem->start, FUNC18(mem));
	if (!td->i2c_base) {
		FUNC2(td->dev, "couldn't ioremap i2c_base resource\n");
		return -ENODEV;
	}

	mem = FUNC16(pdev, IORESOURCE_MEM, 2);
	if (!mem) {
		FUNC2(td->dev, "no i2c_controller_base resource\n");
		return -ENODEV;
	}

	td->i2c_controller_base = FUNC3(td->dev, mem->start,
					       FUNC18(mem));
	if (!td->i2c_controller_base) {
		FUNC2(td->dev,
			"couldn't ioremap i2c_controller_base resource\n");
		return -ENODEV;
	}

	mem = FUNC16(pdev, IORESOURCE_MEM, 3);
	if (!mem) {
		FUNC2(td->dev, "no lut_base resource\n");
		return -ENODEV;
	}

	td->lut_base = FUNC3(td->dev, mem->start, FUNC18(mem));
	if (!td->lut_base) {
		FUNC2(td->dev,
			"couldn't ioremap lut_base resource\n");
		return -ENODEV;
	}

	ret = FUNC13(td);
	if (ret) {
		FUNC2(&pdev->dev, "DFLL clock init error\n");
		return ret;
	}

	/* Enable the clocks and set the device up */
	ret = FUNC12(td);
	if (ret)
		return ret;

	ret = FUNC14(td);
	if (ret) {
		FUNC2(&pdev->dev, "DFLL clk registration failed\n");
		return ret;
	}

	FUNC8(td);

	return 0;
}