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
typedef  unsigned long u32 ;
struct fapll_synth {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 unsigned long FUNC0 (int,unsigned long) ; 
 unsigned long EINVAL ; 
 unsigned long SYNTH_LDFREQ ; 
 unsigned long SYNTH_MAX_DIV_M ; 
 unsigned long SYNTH_MAX_INT_DIV ; 
 int SYNTH_PHASE_K ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct fapll_synth *synth,
					unsigned long rate,
					unsigned long parent_rate)
{
	u32 post_div_m, synth_int_div = 0, synth_frac_div = 0, v;

	post_div_m = FUNC0((u64)parent_rate * SYNTH_PHASE_K, rate);
	post_div_m = post_div_m / SYNTH_MAX_INT_DIV;
	if (post_div_m > SYNTH_MAX_DIV_M)
		return -EINVAL;
	if (!post_div_m)
		post_div_m = 1;

	for (; post_div_m < SYNTH_MAX_DIV_M; post_div_m++) {
		synth_int_div = FUNC0((u64)parent_rate *
						 SYNTH_PHASE_K *
						 10000000,
						 rate * post_div_m);
		synth_frac_div = synth_int_div % 10000000;
		synth_int_div /= 10000000;

		if (synth_int_div <= SYNTH_MAX_INT_DIV)
			break;
	}

	if (synth_int_div > SYNTH_MAX_INT_DIV)
		return -EINVAL;

	v = FUNC1(synth->freq);
	v &= ~0x1fffffff;
	v |= (synth_int_div & SYNTH_MAX_INT_DIV) << 24;
	v |= (synth_frac_div & 0xffffff);
	v |= SYNTH_LDFREQ;
	FUNC2(v, synth->freq);

	return post_div_m;
}