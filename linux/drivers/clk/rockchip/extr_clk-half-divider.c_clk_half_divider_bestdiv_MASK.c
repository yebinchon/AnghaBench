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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_SET_RATE_PARENT ; 
 void* FUNC0 (int,unsigned int) ; 
 unsigned long ULONG_MAX ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
				    unsigned long *best_parent_rate, u8 width,
				    unsigned long flags)
{
	unsigned int i, bestdiv = 0;
	unsigned long parent_rate, best = 0, now, maxdiv;
	unsigned long parent_rate_saved = *best_parent_rate;

	if (!rate)
		rate = 1;

	maxdiv = FUNC5(width);

	if (!(FUNC2(hw) & CLK_SET_RATE_PARENT)) {
		parent_rate = *best_parent_rate;
		bestdiv = FUNC0(((u64)parent_rate * 2), rate);
		if (bestdiv < 3)
			bestdiv = 0;
		else
			bestdiv = (bestdiv - 3) / 2;
		bestdiv = bestdiv > maxdiv ? maxdiv : bestdiv;
		return bestdiv;
	}

	/*
	 * The maximum divider we can use without overflowing
	 * unsigned long in rate * i below
	 */
	maxdiv = FUNC6(ULONG_MAX / rate, maxdiv);

	for (i = 0; i <= maxdiv; i++) {
		if (((u64)rate * (i * 2 + 3)) == ((u64)parent_rate_saved * 2)) {
			/*
			 * It's the most ideal case if the requested rate can be
			 * divided from parent clock without needing to change
			 * parent rate, so return the divider immediately.
			 */
			*best_parent_rate = parent_rate_saved;
			return i;
		}
		parent_rate = FUNC4(FUNC3(hw),
						((u64)rate * (i * 2 + 3)) / 2);
		now = FUNC0(((u64)parent_rate * 2),
				       (i * 2 + 3));

		if (FUNC1(rate, now, best, flags)) {
			bestdiv = i;
			best = now;
			*best_parent_rate = parent_rate;
		}
	}

	if (!bestdiv) {
		bestdiv = FUNC5(width);
		*best_parent_rate = FUNC4(FUNC3(hw), 1);
	}

	return bestdiv;
}