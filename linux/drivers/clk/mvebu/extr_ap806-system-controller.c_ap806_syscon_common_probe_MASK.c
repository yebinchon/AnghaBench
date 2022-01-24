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
typedef  unsigned int u32 ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned int AP806_SAR_CLKFREQ_MODE_MASK ; 
 int /*<<< orphan*/  AP806_SAR_REG ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  ap806_clk_data ; 
 struct regmap** ap806_clks ; 
 int FUNC2 (unsigned int,unsigned int*,unsigned int*) ; 
 int FUNC3 (unsigned int,unsigned int*,unsigned int*) ; 
 char* FUNC4 (struct device*,struct device_node*,char*) ; 
 struct regmap* FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int,int) ; 
 struct regmap* FUNC6 (struct device*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC8 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int FUNC10 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 scalar_t__ FUNC11 (struct device_node*,char*) ; 
 int FUNC12 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct regmap* FUNC13 (struct device_node*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev,
				     struct device_node *syscon_node)
{
	unsigned int freq_mode, cpuclk_freq, dclk_freq;
	const char *name, *fixedclk_name;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct regmap *regmap;
	u32 reg;
	int ret;

	regmap = FUNC13(syscon_node);
	if (FUNC0(regmap)) {
		FUNC9(dev, "cannot get regmap\n");
		return FUNC1(regmap);
	}

	ret = FUNC12(regmap, AP806_SAR_REG, &reg);
	if (ret) {
		FUNC9(dev, "cannot read from regmap\n");
		return ret;
	}

	freq_mode = reg & AP806_SAR_CLKFREQ_MODE_MASK;

	if (FUNC11(pdev->dev.of_node,
				    "marvell,ap806-clock")) {
		ret = FUNC2(freq_mode, &cpuclk_freq, &dclk_freq);
	} else if (FUNC11(pdev->dev.of_node,
					   "marvell,ap807-clock")) {
		ret = FUNC3(freq_mode, &cpuclk_freq, &dclk_freq);
	} else {
		FUNC9(dev, "compatible not supported\n");
		return -EINVAL;
	}

	if (ret) {
		FUNC9(dev, "invalid Sample at Reset value\n");
		return ret;
	}

	/* Convert to hertz */
	cpuclk_freq *= 1000 * 1000;
	dclk_freq *= 1000 * 1000;

	/* CPU clocks depend on the Sample At Reset configuration */
	name = FUNC4(dev, syscon_node, "pll-cluster-0");
	ap806_clks[0] = FUNC6(dev, name, NULL,
						0, cpuclk_freq);
	if (FUNC0(ap806_clks[0])) {
		ret = FUNC1(ap806_clks[0]);
		goto fail0;
	}

	name = FUNC4(dev, syscon_node, "pll-cluster-1");
	ap806_clks[1] = FUNC6(dev, name, NULL, 0,
						cpuclk_freq);
	if (FUNC0(ap806_clks[1])) {
		ret = FUNC1(ap806_clks[1]);
		goto fail1;
	}

	/* Fixed clock is always 1200 Mhz */
	fixedclk_name = FUNC4(dev, syscon_node, "fixed");
	ap806_clks[2] = FUNC6(dev, fixedclk_name, NULL,
						0, 1200 * 1000 * 1000);
	if (FUNC0(ap806_clks[2])) {
		ret = FUNC1(ap806_clks[2]);
		goto fail2;
	}

	/* MSS Clock is fixed clock divided by 6 */
	name = FUNC4(dev, syscon_node, "mss");
	ap806_clks[3] = FUNC5(NULL, name, fixedclk_name,
						  0, 1, 6);
	if (FUNC0(ap806_clks[3])) {
		ret = FUNC1(ap806_clks[3]);
		goto fail3;
	}

	/* SDIO(/eMMC) Clock is fixed clock divided by 3 */
	name = FUNC4(dev, syscon_node, "sdio");
	ap806_clks[4] = FUNC5(NULL, name,
						  fixedclk_name,
						  0, 1, 3);
	if (FUNC0(ap806_clks[4])) {
		ret = FUNC1(ap806_clks[4]);
		goto fail4;
	}

	/* AP-DCLK(HCLK) Clock is DDR clock divided by 2 */
	name = FUNC4(dev, syscon_node, "ap-dclk");
	ap806_clks[5] = FUNC6(dev, name, NULL, 0, dclk_freq);
	if (FUNC0(ap806_clks[5])) {
		ret = FUNC1(ap806_clks[5]);
		goto fail5;
	}

	ret = FUNC10(np, of_clk_src_onecell_get, &ap806_clk_data);
	if (ret)
		goto fail_clk_add;

	return 0;

fail_clk_add:
	FUNC7(ap806_clks[5]);
fail5:
	FUNC7(ap806_clks[4]);
fail4:
	FUNC7(ap806_clks[3]);
fail3:
	FUNC8(ap806_clks[2]);
fail2:
	FUNC8(ap806_clks[1]);
fail1:
	FUNC8(ap806_clks[0]);
fail0:
	return ret;
}