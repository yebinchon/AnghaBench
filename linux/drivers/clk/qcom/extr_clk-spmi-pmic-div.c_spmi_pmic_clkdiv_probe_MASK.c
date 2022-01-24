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
typedef  int u32 ;
struct spmi_pmic_div_clk_cc {int nclks; struct clkdiv* clks; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clkdiv {int base; int cxo_period_ns; TYPE_1__ hw; struct regmap* regmap; int /*<<< orphan*/  lock; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int /*<<< orphan*/ * ops; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int NSEC_PER_SEC ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  clk_spmi_pmic_div_ops ; 
 int /*<<< orphan*/  clks ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct regmap* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device*,TYPE_1__*) ; 
 struct spmi_pmic_div_clk_cc* FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,struct spmi_pmic_div_clk_cc*) ; 
 char* FUNC10 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spmi_pmic_div_clk_hw_get ; 
 int /*<<< orphan*/  FUNC14 (struct spmi_pmic_div_clk_cc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct spmi_pmic_div_clk_cc *cc;
	struct clk_init_data init = {};
	struct clkdiv *clkdiv;
	struct clk *cxo;
	struct regmap *regmap;
	struct device *dev = &pdev->dev;
	struct device_node *of_node = dev->of_node;
	const char *parent_name;
	int nclks, i, ret, cxo_hz;
	char name[20];
	u32 start;

	ret = FUNC11(of_node, "reg", &start);
	if (ret < 0) {
		FUNC5(dev, "reg property reading failed\n");
		return ret;
	}

	regmap = FUNC6(dev->parent, NULL);
	if (!regmap) {
		FUNC5(dev, "Couldn't get parent's regmap\n");
		return -EINVAL;
	}

	ret = FUNC11(of_node, "qcom,num-clkdivs", &nclks);
	if (ret < 0) {
		FUNC5(dev, "qcom,num-clkdivs property reading failed, ret=%d\n",
			ret);
		return ret;
	}

	if (!nclks)
		return -EINVAL;

	cc = FUNC8(dev, FUNC14(cc, clks, nclks), GFP_KERNEL);
	if (!cc)
		return -ENOMEM;
	cc->nclks = nclks;

	cxo = FUNC2(dev, "xo");
	if (FUNC0(cxo)) {
		ret = FUNC1(cxo);
		if (ret != -EPROBE_DEFER)
			FUNC5(dev, "failed to get xo clock\n");
		return ret;
	}
	cxo_hz = FUNC3(cxo);
	FUNC4(cxo);

	parent_name = FUNC10(of_node, 0);
	if (!parent_name) {
		FUNC5(dev, "missing parent clock\n");
		return -ENODEV;
	}

	init.name = name;
	init.parent_names = &parent_name;
	init.num_parents = 1;
	init.ops = &clk_spmi_pmic_div_ops;

	for (i = 0, clkdiv = cc->clks; i < nclks; i++) {
		FUNC12(name, sizeof(name), "div_clk%d", i + 1);

		FUNC13(&clkdiv[i].lock);
		clkdiv[i].base = start + i * 0x100;
		clkdiv[i].regmap = regmap;
		clkdiv[i].cxo_period_ns = NSEC_PER_SEC / cxo_hz;
		clkdiv[i].hw.init = &init;

		ret = FUNC7(dev, &clkdiv[i].hw);
		if (ret)
			return ret;
	}

	return FUNC9(dev, spmi_pmic_div_clk_hw_get, cc);
}