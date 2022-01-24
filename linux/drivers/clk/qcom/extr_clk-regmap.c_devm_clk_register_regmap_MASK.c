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
struct device {struct device* parent; } ;
struct clk_regmap {int /*<<< orphan*/  hw; void* regmap; } ;

/* Variables and functions */
 void* FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *) ; 

int FUNC2(struct device *dev, struct clk_regmap *rclk)
{
	if (dev && FUNC0(dev, NULL))
		rclk->regmap = FUNC0(dev, NULL);
	else if (dev && dev->parent)
		rclk->regmap = FUNC0(dev->parent, NULL);

	return FUNC1(dev, &rclk->hw);
}