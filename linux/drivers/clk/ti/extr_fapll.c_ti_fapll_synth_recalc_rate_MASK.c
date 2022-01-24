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
typedef  int u64 ;
typedef  int u32 ;
struct fapll_synth {scalar_t__ div; scalar_t__ freq; int /*<<< orphan*/  fd; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int,int) ; 
 int SYNTH_MAX_DIV_M ; 
 int SYNTH_PHASE_K ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct fapll_synth* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk_hw *hw,
						unsigned long parent_rate)
{
	struct fapll_synth *synth = FUNC4(hw);
	u32 synth_div_m;
	u64 rate;

	/* The audio_pll_clk1 is hardwired to produce 32.768KiHz clock */
	if (!synth->div)
		return 32768;

	/*
	 * PLL in bypass sets the synths in bypass mode too. The PLL rate
	 * can be also be set to 27MHz, so we can't use parent_rate to
	 * check for bypass mode.
	 */
	if (FUNC3(synth->fd))
		return parent_rate;

	rate = parent_rate;

	/*
	 * Synth frequency integer and fractional divider.
	 * Note that the phase output K is 8, so the result needs
	 * to be multiplied by SYNTH_PHASE_K.
	 */
	if (synth->freq) {
		u32 v, synth_int_div, synth_frac_div, synth_div_freq;

		v = FUNC2(synth->freq);
		synth_int_div = (v >> 24) & 0xf;
		synth_frac_div = v & 0xffffff;
		synth_div_freq = (synth_int_div * 10000000) + synth_frac_div;
		rate *= 10000000;
		FUNC1(rate, synth_div_freq);
		rate *= SYNTH_PHASE_K;
	}

	/* Synth post-divider M */
	synth_div_m = FUNC2(synth->div) & SYNTH_MAX_DIV_M;

	return FUNC0(rate, synth_div_m);
}