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
struct timer_cker {int /*<<< orphan*/  lock; int /*<<< orphan*/  timpre; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (struct clk_hw*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct timer_cker* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
			      unsigned long parent_rate)
{
	struct timer_cker *tim_ker = FUNC3(hw);
	unsigned long flags = 0;
	unsigned long factor = FUNC0(hw, rate, parent_rate);
	int ret = 0;

	FUNC1(tim_ker->lock, flags);

	switch (factor) {
	case 1:
		break;
	case 2:
		FUNC4(0, tim_ker->timpre);
		break;
	case 4:
		FUNC4(1, tim_ker->timpre);
		break;
	default:
		ret = -EINVAL;
	}
	FUNC2(tim_ker->lock, flags);

	return ret;
}