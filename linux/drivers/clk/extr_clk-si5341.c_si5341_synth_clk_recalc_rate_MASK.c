#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct clk_si5341_synth {TYPE_1__* data; int /*<<< orphan*/  index; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int freq_vco; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 struct clk_si5341_synth* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct clk_si5341_synth *synth = FUNC3(hw);
	u64 f;
	u64 n_num;
	u32 n_den;
	int err;

	err = FUNC2(synth->data->regmap,
			FUNC0(synth->index), &n_num, &n_den);
	if (err < 0)
		return err;

	/*
	 * n_num and n_den are shifted left as much as possible, so to prevent
	 * overflow in 64-bit math, we shift n_den 4 bits to the right
	 */
	f = synth->data->freq_vco;
	f *= n_den >> 4;

	/* Now we need to to 64-bit division: f/n_num */
	/* And compensate for the 4 bits we dropped */
	f = FUNC1(f, (n_num >> 4));

	return f;
}