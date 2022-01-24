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
struct clk_si544 {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk_si544*,unsigned long) ; 
 struct clk_si544* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
		unsigned long *parent_rate)
{
	struct clk_si544 *data = FUNC1(hw);

	if (!FUNC0(data, rate))
		return -EINVAL;

	/* The accuracy is less than 1 Hz, so any rate is possible */
	return rate;
}