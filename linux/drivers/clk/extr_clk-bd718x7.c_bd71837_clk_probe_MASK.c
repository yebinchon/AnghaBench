#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rohm_regmap_dev {int chip_type; } ;
struct TYPE_7__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct clk_init_data {char* name; int num_parents; char const** parent_names; int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {struct clk_init_data* init; } ;
struct bd718xx_clk {TYPE_2__ hw; struct platform_device* pdev; struct rohm_regmap_dev* mfd; int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD70528_CLK_OUT_EN_MASK ; 
 int /*<<< orphan*/  BD70528_REG_CLK_OUT ; 
 int /*<<< orphan*/  BD718XX_OUT32K_EN ; 
 int /*<<< orphan*/  BD718XX_REG_OUT32K ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  ROHM_CHIP_TYPE_BD70528 130 
#define  ROHM_CHIP_TYPE_BD71837 129 
#define  ROHM_CHIP_TYPE_BD71847 128 
 int /*<<< orphan*/  bd71837_clk_ops ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct rohm_regmap_dev* FUNC1 (struct device*) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 struct bd718xx_clk* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct bd718xx_clk *c;
	int rval = -ENOMEM;
	const char *parent_clk;
	struct device *parent = pdev->dev.parent;
	struct rohm_regmap_dev *mfd = FUNC1(parent);
	struct clk_init_data init = {
		.name = "bd718xx-32k-out",
		.ops = &bd71837_clk_ops,
	};

	c = FUNC3(&pdev->dev, sizeof(*c), GFP_KERNEL);
	if (!c)
		return -ENOMEM;

	init.num_parents = 1;
	parent_clk = FUNC5(parent->of_node, 0);

	init.parent_names = &parent_clk;
	if (!parent_clk) {
		FUNC0(&pdev->dev, "No parent clk found\n");
		return -EINVAL;
	}
	switch (mfd->chip_type) {
	case ROHM_CHIP_TYPE_BD71837:
	case ROHM_CHIP_TYPE_BD71847:
		c->reg = BD718XX_REG_OUT32K;
		c->mask = BD718XX_OUT32K_EN;
		break;
	case ROHM_CHIP_TYPE_BD70528:
		c->reg = BD70528_REG_CLK_OUT;
		c->mask = BD70528_CLK_OUT_EN_MASK;
		break;
	default:
		FUNC0(&pdev->dev, "Unknown clk chip\n");
		return -EINVAL;
	}
	c->mfd = mfd;
	c->pdev = pdev;
	c->hw.init = &init;

	FUNC6(parent->of_node,
				      "clock-output-names", 0, &init.name);

	rval = FUNC2(&pdev->dev, &c->hw);
	if (rval) {
		FUNC0(&pdev->dev, "failed to register 32K clk");
		return rval;
	}
	rval = FUNC4(&pdev->dev, of_clk_hw_simple_get,
					   &c->hw);
	if (rval)
		FUNC0(&pdev->dev, "adding clk provider failed\n");

	return rval;
}