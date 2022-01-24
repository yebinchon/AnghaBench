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
struct tegra_gmi {int /*<<< orphan*/  rst; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct tegra_gmi* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct tegra_gmi*) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_gmi*) ; 
 int FUNC11 (struct tegra_gmi*) ; 
 int FUNC12 (struct tegra_gmi*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct tegra_gmi *gmi;
	struct resource *res;
	int err;

	gmi = FUNC5(dev, sizeof(*gmi), GFP_KERNEL);
	if (!gmi)
		return -ENOMEM;

	gmi->dev = dev;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	gmi->base = FUNC4(dev, res);
	if (FUNC0(gmi->base))
		return FUNC1(gmi->base);

	gmi->clk = FUNC3(dev, "gmi");
	if (FUNC0(gmi->clk)) {
		FUNC2(dev, "can not get clock\n");
		return FUNC1(gmi->clk);
	}

	gmi->rst = FUNC6(dev, "gmi");
	if (FUNC0(gmi->rst)) {
		FUNC2(dev, "can not get reset\n");
		return FUNC1(gmi->rst);
	}

	err = FUNC12(gmi);
	if (err)
		return err;

	err = FUNC11(gmi);
	if (err < 0)
		return err;

	err = FUNC7(dev->of_node, NULL, dev);
	if (err < 0) {
		FUNC2(dev, "fail to create devices.\n");
		FUNC10(gmi);
		return err;
	}

	FUNC9(pdev, gmi);

	return 0;
}