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
struct uniphier_clk_data {size_t idx; scalar_t__ name; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct clk_hw_onecell_data {int num; struct regmap** hws; } ;
typedef  struct regmap clk_hw ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct regmap* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 struct clk_hw_onecell_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,size_t) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_hw_onecell_data*) ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 
 struct uniphier_clk_data* FUNC10 (struct device*) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 struct regmap* FUNC13 (struct device_node*) ; 
 struct regmap* FUNC14 (struct device*,struct regmap*,struct uniphier_clk_data const*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct clk_hw_onecell_data *hw_data;
	const struct uniphier_clk_data *p, *data;
	struct regmap *regmap;
	struct device_node *parent;
	int clk_num = 0;

	data = FUNC10(dev);
	if (FUNC4(!data))
		return -EINVAL;

	parent = FUNC11(dev->of_node); /* parent should be syscon node */
	regmap = FUNC13(parent);
	FUNC12(parent);
	if (FUNC1(regmap)) {
		FUNC6(dev, "failed to get regmap (error %ld)\n",
			FUNC2(regmap));
		return FUNC2(regmap);
	}

	for (p = data; p->name; p++)
		clk_num = FUNC8(clk_num, p->idx + 1);

	hw_data = FUNC7(dev,
			sizeof(*hw_data) + clk_num * sizeof(struct clk_hw *),
			GFP_KERNEL);
	if (!hw_data)
		return -ENOMEM;

	hw_data->num = clk_num;

	/* avoid returning NULL for unused idx */
	while (--clk_num >= 0)
		hw_data->hws[clk_num] = FUNC0(-EINVAL);

	for (p = data; p->name; p++) {
		struct clk_hw *hw;

		FUNC5(dev, "register %s (index=%d)\n", p->name, p->idx);
		hw = FUNC14(dev, regmap, p);
		if (FUNC3(FUNC1(hw), "failed to register %s", p->name))
			continue;

		if (p->idx >= 0)
			hw_data->hws[p->idx] = hw;
	}

	return FUNC9(dev->of_node, of_clk_hw_onecell_get,
				      hw_data);
}