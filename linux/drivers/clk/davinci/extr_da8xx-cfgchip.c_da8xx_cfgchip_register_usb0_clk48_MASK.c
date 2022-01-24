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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct da8xx_usb0_clk48 {TYPE_1__ hw; struct regmap* regmap; struct clk* fck; } ;
struct clk_init_data {char* name; char const* const* parent_names; int num_parents; int /*<<< orphan*/ * ops; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct da8xx_usb0_clk48* FUNC0 (struct clk*) ; 
 struct da8xx_usb0_clk48* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  da8xx_usb0_clk48_ops ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct clk* FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device*,TYPE_1__*) ; 
 struct da8xx_usb0_clk48* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct da8xx_usb0_clk48 *
FUNC8(struct device *dev,
				  struct regmap *regmap)
{
	const char * const parent_names[] = { "usb_refclkin", "pll0_auxclk" };
	struct clk *fck_clk;
	struct da8xx_usb0_clk48 *usb0;
	struct clk_init_data init;
	int ret;

	fck_clk = FUNC5(dev, "fck");
	if (FUNC2(fck_clk)) {
		if (FUNC3(fck_clk) != -EPROBE_DEFER)
			FUNC4(dev, "Missing fck clock\n");
		return FUNC0(fck_clk);
	}

	usb0 = FUNC7(dev, sizeof(*usb0), GFP_KERNEL);
	if (!usb0)
		return FUNC1(-ENOMEM);

	init.name = "usb0_clk48";
	init.ops = &da8xx_usb0_clk48_ops;
	init.parent_names = parent_names;
	init.num_parents = 2;

	usb0->hw.init = &init;
	usb0->fck = fck_clk;
	usb0->regmap = regmap;

	ret = FUNC6(dev, &usb0->hw);
	if (ret < 0)
		return FUNC1(ret);

	return usb0;
}