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
typedef  int /*<<< orphan*/  u8 ;
struct clk_si5341_synth {TYPE_1__* data; int /*<<< orphan*/  index; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SI5341_SYNTH_N_CLK_DIS ; 
 int /*<<< orphan*/  SI5341_SYNTH_N_CLK_TO_OUTX_EN ; 
 int /*<<< orphan*/  SI5341_SYNTH_N_PDNB ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_si5341_synth* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_si5341_synth *synth = FUNC2(hw);
	int err;
	u8 index = synth->index;
	u8 mask = FUNC0(index);

	/* Power up */
	err = FUNC1(synth->data->regmap,
		SI5341_SYNTH_N_PDNB, mask, mask);
	if (err < 0)
		return err;

	/* Enable clock input to synth (set bit to 0 to enable) */
	err = FUNC1(synth->data->regmap,
		SI5341_SYNTH_N_CLK_DIS, mask, 0);
	if (err < 0)
		return err;

	/* Enable output */
	return FUNC1(synth->data->regmap,
		SI5341_SYNTH_N_CLK_TO_OUTX_EN, mask, mask);
}