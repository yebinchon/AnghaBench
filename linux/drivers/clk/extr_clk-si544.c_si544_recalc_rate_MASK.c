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
struct clk_si544_muldiv {int dummy; } ;
struct clk_si544 {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct clk_si544_muldiv*) ; 
 int FUNC1 (struct clk_si544*,struct clk_si544_muldiv*) ; 
 struct clk_si544* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct clk_si544 *data = FUNC2(hw);
	struct clk_si544_muldiv settings;
	int err;

	err = FUNC1(data, &settings);
	if (err)
		return 0;

	return FUNC0(&settings);
}