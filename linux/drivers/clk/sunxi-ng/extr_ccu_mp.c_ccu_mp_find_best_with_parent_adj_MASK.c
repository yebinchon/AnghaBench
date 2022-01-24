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
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long ULONG_MAX ; 
 unsigned long FUNC0 (struct clk_hw*,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
						      unsigned long *parent,
						      unsigned long rate,
						      unsigned int max_m,
						      unsigned int max_p)
{
	unsigned long parent_rate_saved;
	unsigned long parent_rate, now;
	unsigned long best_rate = 0;
	unsigned int _m, _p, div;
	unsigned long maxdiv;

	parent_rate_saved = *parent;

	/*
	 * The maximum divider we can use without overflowing
	 * unsigned long in rate * m * p below
	 */
	maxdiv = max_m * max_p;
	maxdiv = FUNC1(ULONG_MAX / rate, maxdiv);

	for (_p = 1; _p <= max_p; _p <<= 1) {
		for (_m = 1; _m <= max_m; _m++) {
			div = _m * _p;

			if (div > maxdiv)
				break;

			if (rate * div == parent_rate_saved) {
				/*
				 * It's the most ideal case if the requested
				 * rate can be divided from parent clock without
				 * needing to change parent rate, so return the
				 * divider immediately.
				 */
				*parent = parent_rate_saved;
				return rate;
			}

			parent_rate = FUNC0(hw, rate * div);
			now = parent_rate / div;

			if (now <= rate && now > best_rate) {
				best_rate = now;
				*parent = parent_rate;

				if (now == rate)
					return rate;
			}
		}
	}

	return best_rate;
}