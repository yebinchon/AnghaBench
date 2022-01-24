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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct clk_hw {struct clk_init_data* init; } ;
struct s3c24xx_clkout {struct clk_hw hw; int /*<<< orphan*/  mask; void* shift; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; char const** parent_names; void* num_parents; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device*,struct clk_hw*) ; 
 struct s3c24xx_clkout* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c24xx_clkout_ops ; 

__attribute__((used)) static struct clk_hw *FUNC3(struct device *dev,
		const char *name, const char **parent_names, u8 num_parents,
		u8 shift, u32 mask)
{
	struct s3c24xx_clkout *clkout;
	struct clk_init_data init;
	int ret;

	/* allocate the clkout */
	clkout = FUNC2(sizeof(*clkout), GFP_KERNEL);
	if (!clkout)
		return FUNC0(-ENOMEM);

	init.name = name;
	init.ops = &s3c24xx_clkout_ops;
	init.flags = 0;
	init.parent_names = parent_names;
	init.num_parents = num_parents;

	clkout->shift = shift;
	clkout->mask = mask;
	clkout->hw.init = &init;

	ret = FUNC1(dev, &clkout->hw);
	if (ret)
		return FUNC0(ret);

	return &clkout->hw;
}