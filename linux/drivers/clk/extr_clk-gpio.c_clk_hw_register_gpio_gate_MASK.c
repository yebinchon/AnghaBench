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
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct clk_ops {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct clk_ops clk_gpio_gate_ops ; 
 struct clk_hw* FUNC0 (struct device*,char const*,char const**,int,struct gpio_desc*,unsigned long,struct clk_ops const*) ; 
 struct clk_ops clk_sleeping_gpio_gate_ops ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 

struct clk_hw *FUNC2(struct device *dev, const char *name,
		const char *parent_name, struct gpio_desc *gpiod,
		unsigned long flags)
{
	const struct clk_ops *ops;

	if (FUNC1(gpiod))
		ops = &clk_sleeping_gpio_gate_ops;
	else
		ops = &clk_gpio_gate_ops;

	return FUNC0(dev, name,
			(parent_name ? &parent_name : NULL),
			(parent_name ? 1 : 0), gpiod, flags, ops);
}