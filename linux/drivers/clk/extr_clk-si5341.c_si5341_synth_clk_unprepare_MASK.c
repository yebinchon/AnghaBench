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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_si5341_synth* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct clk_si5341_synth *synth = FUNC2(hw);
	u8 index = synth->index; /* In range 0..5 */
	u8 mask = FUNC0(index);

	/* Disable output */
	FUNC1(synth->data->regmap,
		SI5341_SYNTH_N_CLK_TO_OUTX_EN, mask, 0);
	/* Power down */
	FUNC1(synth->data->regmap,
		SI5341_SYNTH_N_PDNB, mask, 0);
	/* Disable clock input to synth (set to 1 to disable) */
	FUNC1(synth->data->regmap,
		SI5341_SYNTH_N_CLK_DIS, mask, mask);
}