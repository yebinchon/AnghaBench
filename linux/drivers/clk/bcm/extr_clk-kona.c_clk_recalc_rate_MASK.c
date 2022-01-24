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
typedef  unsigned long u64 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_div {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ LONG_MAX ; 
 scalar_t__ FUNC1 (struct bcm_clk_div*) ; 
 unsigned long FUNC2 (struct ccu_data*,struct bcm_clk_div*) ; 
 unsigned long FUNC3 (struct bcm_clk_div*,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC4(struct ccu_data *ccu,
			struct bcm_clk_div *div, struct bcm_clk_div *pre_div,
			unsigned long parent_rate)
{
	u64 scaled_parent_rate;
	u64 scaled_div;
	u64 result;

	if (!FUNC1(div))
		return parent_rate;

	if (parent_rate > (unsigned long)LONG_MAX)
		return 0;	/* actually this would be a caller bug */

	/*
	 * If there is a pre-divider, divide the scaled parent rate
	 * by the pre-divider value first.  In this case--to improve
	 * accuracy--scale the parent rate by *both* the pre-divider
	 * value and the divider before actually computing the
	 * result of the pre-divider.
	 *
	 * If there's only one divider, just scale the parent rate.
	 */
	if (pre_div && FUNC1(pre_div)) {
		u64 scaled_rate;

		scaled_rate = FUNC3(pre_div, parent_rate);
		scaled_rate = FUNC3(div, scaled_rate);
		scaled_div = FUNC2(ccu, pre_div);
		scaled_parent_rate = FUNC0(scaled_rate,
							scaled_div);
	} else  {
		scaled_parent_rate = FUNC3(div, parent_rate);
	}

	/*
	 * Get the scaled divisor value, and divide the scaled
	 * parent rate by that to determine this clock's resulting
	 * rate.
	 */
	scaled_div = FUNC2(ccu, div);
	result = FUNC0(scaled_parent_rate, scaled_div);

	return (unsigned long)result;
}