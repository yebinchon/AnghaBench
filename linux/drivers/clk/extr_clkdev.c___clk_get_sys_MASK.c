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
struct clk {int dummy; } ;

/* Variables and functions */
 struct clk_hw* FUNC0 (char const*,char const*) ; 
 struct clk* FUNC1 (struct device*,struct clk_hw*,char const*,char const*) ; 

__attribute__((used)) static struct clk *FUNC2(struct device *dev, const char *dev_id,
				 const char *con_id)
{
	struct clk_hw *hw = FUNC0(dev_id, con_id);

	return FUNC1(dev, hw, dev_id, con_id);
}