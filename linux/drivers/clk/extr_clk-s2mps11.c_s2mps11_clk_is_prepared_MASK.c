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
struct s2mps11_clk {int mask; int /*<<< orphan*/  reg; TYPE_1__* iodev; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap_pmic; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct s2mps11_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	int ret;
	u32 val;
	struct s2mps11_clk *s2mps11 = FUNC1(hw);

	ret = FUNC0(s2mps11->iodev->regmap_pmic,
				s2mps11->reg, &val);
	if (ret < 0)
		return -EINVAL;

	return val & s2mps11->mask;
}