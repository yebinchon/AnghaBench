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
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct bcm2835_cprman {int /*<<< orphan*/  dev; } ;
struct bcm2835_clock_data {int set_rate_parent; int int_bits; scalar_t__ is_mash_clock; scalar_t__ frac_bits; scalar_t__ low_jitter; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CM_DIV_FRAC_BITS ; 
 int CM_DIV_FRAC_MASK ; 
 int FUNC1 (struct clk_hw*,unsigned long,unsigned long,int) ; 
 struct bcm2835_clock* FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (struct bcm2835_clock*,unsigned long,int) ; 
 struct clk_hw* FUNC4 (struct clk_hw*,int) ; 
 unsigned long FUNC5 (struct clk_hw*) ; 
 unsigned long FUNC6 (struct clk_hw*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC9(struct clk_hw *hw,
							int parent_idx,
							unsigned long rate,
							u32 *div,
							unsigned long *prate,
							unsigned long *avgrate)
{
	struct bcm2835_clock *clock = FUNC2(hw);
	struct bcm2835_cprman *cprman = clock->cprman;
	const struct bcm2835_clock_data *data = clock->data;
	unsigned long best_rate = 0;
	u32 curdiv, mindiv, maxdiv;
	struct clk_hw *parent;

	parent = FUNC4(hw, parent_idx);

	if (!(FUNC0(parent_idx) & data->set_rate_parent)) {
		*prate = FUNC5(parent);
		*div = FUNC1(hw, rate, *prate, true);

		*avgrate = FUNC3(clock, *prate, *div);

		if (data->low_jitter && (*div & CM_DIV_FRAC_MASK)) {
			unsigned long high, low;
			u32 int_div = *div & ~CM_DIV_FRAC_MASK;

			high = FUNC3(clock, *prate,
							       int_div);
			int_div += CM_DIV_FRAC_MASK + 1;
			low = FUNC3(clock, *prate,
							      int_div);

			/*
			 * Return a value which is the maximum deviation
			 * below the ideal rate, for use as a metric.
			 */
			return *avgrate - FUNC8(*avgrate - low, high - *avgrate);
		}
		return *avgrate;
	}

	if (data->frac_bits)
		FUNC7(cprman->dev,
			"frac bits are not used when propagating rate change");

	/* clamp to min divider of 2 if we're dealing with a mash clock */
	mindiv = data->is_mash_clock ? 2 : 1;
	maxdiv = FUNC0(data->int_bits) - 1;

	/* TODO: Be smart, and only test a subset of the available divisors. */
	for (curdiv = mindiv; curdiv <= maxdiv; curdiv++) {
		unsigned long tmp_rate;

		tmp_rate = FUNC6(parent, rate * curdiv);
		tmp_rate /= curdiv;
		if (curdiv == mindiv ||
		    (tmp_rate > best_rate && tmp_rate <= rate))
			best_rate = tmp_rate;

		if (best_rate == rate)
			break;
	}

	*div = curdiv << CM_DIV_FRAC_BITS;
	*prate = curdiv * best_rate;
	*avgrate = best_rate;

	return best_rate;
}