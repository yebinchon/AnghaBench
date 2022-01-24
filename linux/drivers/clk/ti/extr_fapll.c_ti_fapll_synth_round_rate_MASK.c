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
typedef  unsigned long u32 ;
struct fapll_synth {int /*<<< orphan*/  freq; int /*<<< orphan*/  div; struct fapll_data* fd; } ;
struct fapll_data {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 long EINVAL ; 
 int SYNTH_MAX_DIV_M ; 
 int SYNTH_MAX_INT_DIV ; 
 unsigned long SYNTH_PHASE_K ; 
 scalar_t__ FUNC2 (struct fapll_data*) ; 
 unsigned long FUNC3 (struct clk_hw*,unsigned long) ; 
 struct fapll_synth* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC5(struct clk_hw *hw, unsigned long rate,
				      unsigned long *parent_rate)
{
	struct fapll_synth *synth = FUNC4(hw);
	struct fapll_data *fd = synth->fd;
	unsigned long r;

	if (FUNC2(fd) || !synth->div || !rate)
		return -EINVAL;

	/* Only post divider m available with no fractional divider? */
	if (!synth->freq) {
		unsigned long frac_rate;
		u32 synth_post_div_m;

		frac_rate = FUNC3(hw, *parent_rate);
		synth_post_div_m = FUNC0(frac_rate, rate);
		r = FUNC0(frac_rate, synth_post_div_m);
		goto out;
	}

	r = *parent_rate * SYNTH_PHASE_K;
	if (rate > r)
		goto out;

	r = FUNC1(r, SYNTH_MAX_INT_DIV * SYNTH_MAX_DIV_M);
	if (rate < r)
		goto out;

	r = rate;
out:
	return r;
}