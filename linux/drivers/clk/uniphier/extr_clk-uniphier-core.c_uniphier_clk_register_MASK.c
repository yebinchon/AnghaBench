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
struct TYPE_2__ {int /*<<< orphan*/  mux; int /*<<< orphan*/  gate; int /*<<< orphan*/  rate; int /*<<< orphan*/  factor; int /*<<< orphan*/  cpugear; } ;
struct uniphier_clk_data {int type; TYPE_1__ data; int /*<<< orphan*/  name; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct clk_hw* FUNC0 (int /*<<< orphan*/ ) ; 
#define  UNIPHIER_CLK_TYPE_CPUGEAR 132 
#define  UNIPHIER_CLK_TYPE_FIXED_FACTOR 131 
#define  UNIPHIER_CLK_TYPE_FIXED_RATE 130 
#define  UNIPHIER_CLK_TYPE_GATE 129 
#define  UNIPHIER_CLK_TYPE_MUX 128 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct clk_hw* FUNC2 (struct device*,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk_hw* FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk_hw* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk_hw* FUNC5 (struct device*,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk_hw* FUNC6 (struct device*,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct clk_hw *FUNC7(struct device *dev,
					    struct regmap *regmap,
					const struct uniphier_clk_data *data)
{
	switch (data->type) {
	case UNIPHIER_CLK_TYPE_CPUGEAR:
		return FUNC2(dev, regmap, data->name,
						     &data->data.cpugear);
	case UNIPHIER_CLK_TYPE_FIXED_FACTOR:
		return FUNC3(dev, data->name,
							  &data->data.factor);
	case UNIPHIER_CLK_TYPE_FIXED_RATE:
		return FUNC4(dev, data->name,
							&data->data.rate);
	case UNIPHIER_CLK_TYPE_GATE:
		return FUNC5(dev, regmap, data->name,
						  &data->data.gate);
	case UNIPHIER_CLK_TYPE_MUX:
		return FUNC6(dev, regmap, data->name,
						 &data->data.mux);
	default:
		FUNC1(dev, "unsupported clock type\n");
		return FUNC0(-EINVAL);
	}
}