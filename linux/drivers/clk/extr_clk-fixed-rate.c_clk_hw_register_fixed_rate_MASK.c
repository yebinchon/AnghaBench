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
struct device {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct clk_hw* FUNC0 (struct device*,char const*,char const*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

struct clk_hw *FUNC1(struct device *dev, const char *name,
		const char *parent_name, unsigned long flags,
		unsigned long fixed_rate)
{
	return FUNC0(dev, name, parent_name,
						     flags, fixed_rate, 0);
}